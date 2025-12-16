/// A datatype containing media that is part of a multi-part `Content` message.
/// A `Part` consists of data which has an associated datatype. A `Part` can only contain one of the accepted types in `Part.data`.
/// A `Part` must have a fixed IANA MIME type identifying the type and subtype of the media if the `inlineData` field is filled with raw bytes.
public struct Part: Codable {

	/// Inline text.
	public var text: String?

	/// Inline media bytes.
	public var inlineData: Blob?
}
