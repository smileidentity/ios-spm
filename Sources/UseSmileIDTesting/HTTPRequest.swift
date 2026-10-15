#if DEBUG
  import Foundation

  /// One HTTP/1.1 request as the test server received it: complete once its head and the body its
  /// `Content-Length` declares have arrived.
  struct HTTPRequest {
    let path: String
    let headers: [String: String]
    let body: Data

    /// Nil until `buffer` holds the whole request.
    init?(_ buffer: Data) {
      guard let headEnd = buffer.range(of: Data("\r\n\r\n".utf8)) else { return nil }
      let lines = String(decoding: buffer[..<headEnd.lowerBound], as: UTF8.self).components(separatedBy: "\r\n")
      var headers: [String: String] = [:]
      for line in lines.dropFirst() {
        guard let colon = line.firstIndex(of: ":") else { continue }
        let name = line[..<colon].trimmingCharacters(in: .whitespaces).lowercased()
        headers[name] = line[line.index(after: colon)...].trimmingCharacters(in: .whitespaces)
      }
      let length = headers["content-length"].flatMap(Int.init) ?? 0
      guard buffer.count - headEnd.upperBound >= length else { return nil }
      let target = lines.first?.split(separator: " ").dropFirst().first.map(String.init) ?? "/"
      path = URLComponents(string: target)?.path ?? target
      self.headers = headers
      body = buffer.subdata(in: headEnd.upperBound..<(headEnd.upperBound + length))
    }

    /// The request as a test reads it: its body un-gzipped and split into parts.
    var decoded: UseSmileIDTestRequest {
      let bytes = headers["content-encoding"] == "gzip" ? (body.gunzipped ?? body) : body
      let contentType = headers["content-type"] ?? ""
      let parts: [String: UseSmileIDTestPart] =
        if contentType.hasPrefix("multipart/") {
          bytes.multipartParts(boundary: contentType.boundary)
        } else if contentType.hasPrefix("application/json") {
          bytes.jsonFields
        } else {
          [:]
        }
      return UseSmileIDTestRequest(path: path, headers: headers, parts: parts)
    }
  }

  private extension String {
    /// A multipart content type's `boundary`, unquoted.
    var boundary: String? {
      guard let range = range(of: "boundary=") else { return nil }
      let value = self[range.upperBound...].split(separator: ";").first.map(String.init) ?? ""
      return value.trimmingCharacters(in: CharacterSet(charactersIn: "\" "))
    }
  }

  extension Data {
    /// A gzip member's payload, inflated; nil when this isn't gzip. Foundation's `.zlib` inflates raw
    /// DEFLATE, so the gzip header and trailer are stepped over by hand (RFC 1952).
    var gunzipped: Data? {
      let bytes = [UInt8](self)
      guard bytes.count > 18, bytes[0] == 0x1f, bytes[1] == 0x8b, bytes[2] == 8 else { return nil }
      let flags = bytes[3]
      var index = 10
      if flags & 0x04 != 0, index + 2 <= bytes.count {
        index += 2 + (Int(bytes[index]) | Int(bytes[index + 1]) << 8)
      }
      for flag: UInt8 in [0x08, 0x10] where flags & flag != 0 {
        while index < bytes.count, bytes[index] != 0 {
          index += 1
        }
        index += 1
      }
      if flags & 0x02 != 0 {
        index += 2
      }
      guard index < bytes.count - 8 else { return nil }
      return try? (Data(bytes[index..<(bytes.count - 8)]) as NSData).decompressed(using: .zlib) as Data
    }

    /// A multipart body's parts by name: text as text, a file by its name and size.
    func multipartParts(boundary: String?) -> [String: UseSmileIDTestPart] {
      guard let boundary, !boundary.isEmpty else { return [:] }
      let delimiter = Data("--\(boundary)".utf8)
      var parts: [String: UseSmileIDTestPart] = [:]
      var cursor = startIndex
      while let open = range(of: delimiter, in: cursor..<endIndex) {
        let partStart = open.upperBound + 2 // the CRLF after the delimiter
        guard partStart < endIndex,
              let close = range(of: delimiter, in: partStart..<endIndex),
              let headEnd = range(of: Data("\r\n\r\n".utf8), in: partStart..<close.lowerBound) else { break }
        let head = String(decoding: self[partStart..<headEnd.lowerBound], as: UTF8.self)
        let content = self[headEnd.upperBound..<Swift.max(headEnd.upperBound, close.lowerBound - 2)] // the CRLF before it
        if let name = head.dispositionValue("name") {
          parts[name] = head.dispositionValue("filename").map { .file(fileName: $0, size: content.count) }
            ?? .text(String(decoding: content, as: UTF8.self))
        }
        cursor = close.lowerBound
      }
      return parts
    }

    /// A JSON object body's top-level fields, each as text.
    var jsonFields: [String: UseSmileIDTestPart] {
      guard let object = (try? JSONSerialization.jsonObject(with: self)) as? [String: Any] else { return [:] }
      return object.mapValues { value in
        if let text = value as? String {
          return .text(text)
        }
        if JSONSerialization.isValidJSONObject(value),
           let data = try? JSONSerialization.data(withJSONObject: value, options: [.sortedKeys]) {
          return .text(String(decoding: data, as: UTF8.self))
        }
        return .text("\(value)")
      }
    }
  }

  private extension String {
    /// A `Content-Disposition` parameter's quoted value, such as `name` or `filename`.
    func dispositionValue(_ parameter: String) -> String? {
      guard let range = range(of: "\(parameter)=\"") else { return nil }
      let rest = self[range.upperBound...]
      return rest.firstIndex(of: "\"").map { String(rest[..<$0]) }
    }
  }
#endif
