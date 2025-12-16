/// Describes the options to customize dynamic retrieval.
public struct DynamicRetrievalConfig: Codable {

	/// The mode of the predictor to be used in dynamic retrieval.
	public var mode: Mode

	/// The threshold to be used in dynamic retrieval. If not set, a system default value is used.
	public var dynamicThreshold: Float?

	/// The mode of the predictor to be used in dynamic retrieval.
	public enum Mode: String, Codable {

		/// Always trigger retrieval.
		case unspecified = "MODE_UNSPECIFIED"

		/// Run retrieval only when system decides it is necessary.
		case dynamic = "MODE_DYNAMIC"
	}
}
