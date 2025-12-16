/// Block at and beyond a specified harm probability.
public enum HarmBlockThreshold: String, Codable {

	/// Threshold is unspecified.
	case unspecified = "HARM_BLOCK_THRESHOLD_UNSPECIFIED"

	/// Content with NEGLIGIBLE will be allowed.
	case lowAndAbove = "BLOCK_LOW_AND_ABOVE"

	/// Content with NEGLIGIBLE and LOW will be allowed.
	case mediumAndAbove = "BLOCK_MEDIUM_AND_ABOVE"

	/// Content with NEGLIGIBLE, LOW, and MEDIUM will be allowed.
	case high = "BLOCK_ONLY_HIGH"

	/// All content will be allowed.
	case none = "BLOCK_NONE"

	/// Turn off the safety filter.
	case off = "OFF"
}
