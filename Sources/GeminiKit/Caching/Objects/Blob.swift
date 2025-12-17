/// Raw media bytes.
/// Text should not be sent as raw bytes, use the 'text' field.
public struct Blob: Codable {

	/// The IANA standard MIME type of the source data. Examples: - image/png - image/jpeg If an unsupported MIME type is provided, an error will be returned. For a complete list of supported types, see Supported file formats.
	public var mimeType: String?

	/// Raw bytes for media formats.
	/// A base64-encoded string.
	public var data: String?
	
	public init(mimeType: String? = nil, data: String? = nil) {
		self.mimeType = mimeType
		self.data = data
	}
}
