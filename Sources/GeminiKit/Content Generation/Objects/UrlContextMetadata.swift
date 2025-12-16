/// Metadata related to url context retrieval tool.
public struct UrlContextMetadata: Codable {

	/// List of url context.
	public var urlMetadata: [UrlMetadata]

	public init(urlMetadata: [UrlMetadata]) {
		self.urlMetadata = urlMetadata
	}
}
