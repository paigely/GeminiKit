/// Response from the model supporting multiple candidate responses.
/// Safety ratings and content filtering are reported for both prompt in `GenerateContentResponse.prompt_feedback` and for each candidate in `finishReason` and in `safetyRatings`. The API: - Returns either all requested candidates or none of them - Returns no candidates at all only if there was something wrong with the prompt (check `promptFeedback`) - Reports feedback on each candidate in `finishReason` and `safetyRatings`.
public struct GenerateContentResponse: Codable {

	/// Candidate responses from the model.
	public var candidates: [Candidate]

	/// Returns the prompt's feedback related to the content filters.
	public var promptFeedback: PromptFeedback

	/// Output only. Metadata on the generation requests' token usage.
	public var usageMetadata: UsageMetadata

	/// Output only. The model version used to generate the response.
	public var modelVersion: String

	/// Output only. responseId is used to identify each response.
	public var responseId: String

	/// A set of the feedback metadata the prompt specified in `GenerateContentRequest.content`.
	public struct PromptFeedback: Codable {

		/// Optional. If set, the prompt was blocked and no candidates are returned. Rephrase the prompt.
		public var blockReason: BlockReason?

		/// Ratings for safety of the prompt. There is at most one rating per category.
		public var safetyRatings: [SafetyRating]

		/// Specifies the reason why the prompt was blocked.
		public enum BlockReason: String, Codable {

			/// Default value. This value is unused.
			case unspecified = "BLOCK_REASON_UNSPECIFIED"

			/// Prompt was blocked due to safety reasons. Inspect `safetyRatings` to understand which safety category blocked it.
			case safety = "SAFETY"

			/// Prompt was blocked due to unknown reasons.
			case other = "OTHER"

			/// Prompt was blocked due to the terms which are included from the terminology blocklist.
			case blocklist = "BLOCKLIST"

			/// Prompt was blocked due to prohibited content.
			case prohibitedContent = "PROHIBITED_CONTENT"

			/// Candidates blocked due to unsafe image generation content.
			case imageSafety = "IMAGE_SAFETY"
		}
	}

	/// Metadata on the generation request's token usage.
	public struct UsageMetadata: Codable {

		/// Number of tokens in the prompt. When `cachedContent` is set, this is still the total effective prompt size meaning this includes the number of tokens in the cached content.
		public var promptTokenCount: Int

		/// Number of tokens in the cached part of the prompt (the cached content)
		public var cachedContentTokenCount: Int

		/// Total number of tokens across all the generated response candidates.
		public var candidatesTokenCount: Int

		/// Output only. Number of tokens present in tool-use prompt(s).
		public var toolUsePromptTokenCount: Int

		/// Output only. Number of tokens of thoughts for thinking models.
		public var thoughtsTokenCount: Int

		/// Total token count for the generation request (prompt + response candidates).
		public var totalTokenCount: Int

		/// Output only. List of modalities that were processed in the request input.
		public var promptTokensDetails: [ModalityTokenCount]

		/// Output only. List of modalities of the cached content in the request input.
		public var cacheTokensDetails: [ModalityTokenCount]

		/// Output only. List of modalities that were returned in the response.
		public var candidatesTokensDetails: [ModalityTokenCount]

		/// Output only. List of modalities that were processed for tool-use request inputs.
		public var toolUsePromptTokensDetails: [ModalityTokenCount]

		/// Represents token counting info for a single modality.
		public struct ModalityTokenCount: Codable {

			/// The modality associated with this token count.
			public var modality: Modality

			/// Number of tokens.
			public var tokenCount: Int

			/// Content Part modality
			public enum Modality: String, Codable {

				/// Unspecified modality.
				case unspecified = "MODALITY_UNSPECIFIED"

				/// Plain text.
				case text = "TEXT"

				/// Image.
				case image = "IMAGE"

				/// Video.
				case video = "VIDEO"

				/// Audio.
				case audio = "AUDIO"

				/// Document, e.g. PDF.
				case document = "DOCUMENT"
			}
		}
	}
}
