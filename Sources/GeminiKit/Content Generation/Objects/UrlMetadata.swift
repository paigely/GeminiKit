/// Context of the a single url retrieval.
public struct UrlMetadata: Codable {

	/// Retrieved url by the tool.
	public var retrievedUrl: String

	/// Status of the url retrieval.
	public var urlRetrievalStatus: UrlRetrievalStatus
}
