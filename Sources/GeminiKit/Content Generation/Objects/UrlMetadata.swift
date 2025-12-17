/// Context of the a single url retrieval.
public struct UrlMetadata: Codable {

	/// Retrieved url by the tool.
	public var retrievedUrl: String?

	/// Status of the url retrieval.
	public var urlRetrievalStatus: UrlRetrievalStatus?

	public init(retrievedUrl: String? = nil, urlRetrievalStatus: UrlRetrievalStatus? = nil) {
		self.retrievedUrl = retrievedUrl
		self.urlRetrievalStatus = urlRetrievalStatus
	}
}
