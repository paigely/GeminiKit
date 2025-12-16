/// Grounding chunk.
public struct GroundingChunk: Codable {

	/// Grounding chunk from the web.
	public var web: Web?

	/// Optional. Grounding chunk from context retrieved by the file search tool.
	public var retrievedContext: RetrievedContext?

	/// Optional. Grounding chunk from Google Maps.
	public var maps: Maps?

	/// Chunk from the web.
	public struct Web: Codable {

		/// URI reference of the chunk.
		public var uri: String

		/// Title of the chunk.
		public var title: String
	}

	/// Chunk from context retrieved by the file search tool.
	public struct RetrievedContext: Codable {

		/// Optional. URI reference of the semantic retrieval document.
		public var uri: String?

		/// Optional. Title of the document.
		public var title: String?

		/// Optional. Text of the chunk.
		public var text: String?

		/// Optional. Name of the FileSearchStore containing the document. Example: fileSearchStores/123
		public var fileSearchStore: String?
	}

	/// A grounding chunk from Google Maps. A Maps chunk corresponds to a single place.
	public struct Maps: Codable {

		/// URI reference of the place.
		public var uri: String

		/// Title of the place.
		public var title: String

		/// Text description of the place answer.
		public var text: String

		/// This ID of the place, in places/{placeId} format. A user can use this ID to look up that place.
		public var placeId: String

		/// Sources that provide answers about the features of a given place in Google Maps.
		public var placeAnswerSources: PlaceAnswerSources

		/// Collection of sources that provide answers about the features of a given place in Google Maps. Each PlaceAnswerSources message corresponds to a specific place in Google Maps. The Google Maps tool used these sources in order to answer questions about features of the place (e.g: "does Bar Foo have Wifi" or "is Foo Bar wheelchair accessible?"). Currently we only support review snippets as sources.
		public struct PlaceAnswerSources: Codable {

			/// Snippets of reviews that are used to generate answers about the features of a given place in Google Maps.
			public var reviewSnippets: [ReviewSnippet]

			/// Encapsulates a snippet of a user review that answers a question about the features of a specific place in Google Maps.
			public struct ReviewSnippet: Codable {

				/// The ID of the review snippet.
				public var reviewId: String

				/// A link that corresponds to the user review on Google Maps.
				public var googleMapsUri: String

				/// Title of the review.
				public var title: String
			}
		}
	}
}
