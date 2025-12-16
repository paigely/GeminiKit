/// Attribution for a source that contributed to an answer.
public struct GroundingAttribution: Codable {

	/// Output only. Identifier for the source contributing to this attribution.
	public var sourceId: AttributionSourceId

	/// Grounding source content that makes up this attribution.
	public var content: Content

	public struct AttributionSourceId: Codable {
		/// Identifier for an inline passage.
		public var groundingPassage: GroundingPassageId

		/// Identifier for a Chunk fetched via Semantic Retriever.
		public var semanticRetrieverChunk: SemanticRetrieverChunk

		/// Identifier for a part within a GroundingPassage.
		public struct GroundingPassageId: Codable {

			/// Output only. ID of the passage matching the GenerateAnswerRequest's GroundingPassage.id.
			public var passageId: String

			/// Output only. Index of the part within the GenerateAnswerRequest's GroundingPassage.content.
			public var partIndex: Int
		}

		/// Identifier for a Chunk retrieved via Semantic Retriever specified in the GenerateAnswerRequest using SemanticRetrieverConfig.
		public struct SemanticRetrieverChunk: Codable {

			/// Output only. Name of the source matching the request's SemanticRetrieverConfig.source. Example: corpora/123 or corpora/123/documents/abc
			public var source: String

			/// Output only. Name of the Chunk containing the attributed text. Example: corpora/123/documents/abc/chunks/xyz
			public var chunk: String
		}
	}
}
