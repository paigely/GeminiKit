/// Metadata returned to client when grounding is enabled.
public struct GroundingMetadata: Codable {

	/// List of supporting references retrieved from specified grounding source.
	public var groundingChunks: [GroundingChunk]

	/// List of grounding support.
	public var groundingSupports: [GroundingSupport]

	/// Web search queries for the following-up web search.
	public var webSearchQueries: [String]

	/// Optional. Google search entry for the following-up web searches.
	public var searchEntryPoint: SearchEntryPoint?

	/// Metadata related to retrieval in the grounding flow.
	public var retrievalMetadata: RetrievalMetadata

	/// Optional. Resource name of the Google Maps widget context token that can be used with the PlacesContextElement widget in order to render contextual data. Only populated in the case that grounding with Google Maps is enabled.
	public var googleMapsWidgetContextToken: String?

	/// Google search entry point.
	public struct SearchEntryPoint: Codable {

		/// Optional. Web content snippet that can be embedded in a web page or an app webview.
		public var renderedContent: String?

		/// Optional. Base64 encoded JSON representing array of <search term, search url> tuple.
		/// A base64-encoded string.
		public var sdkBlob: String?
	}

	/// Metadata related to retrieval in the grounding flow.
	public struct RetrievalMetadata: Codable {

		/// Optional. Score indicating how likely information from google search could help answer the prompt. The score is in the range [0, 1], where 0 is the least likely and 1 is the most likely. This score is only populated when google search grounding and dynamic retrieval is enabled. It will be compared to the threshold to determine whether to trigger google search.
		public var googleSearchDynamicRetrievalScore: Float?
	}
}
