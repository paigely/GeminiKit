/// Tool to retrieve public web data for grounding, powered by Google.
public struct GoogleSearchRetrieval: Codable {

	/// Specifies the dynamic retrieval configuration for the given source.
	public var dynamicRetrievalConfig: DynamicRetrievalConfig?
	
	public init(dynamicRetrievalConfig: DynamicRetrievalConfig? = nil) {
		self.dynamicRetrievalConfig = dynamicRetrievalConfig
	}
}
