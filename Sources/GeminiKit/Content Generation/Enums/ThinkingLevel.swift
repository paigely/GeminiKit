/// Allow user to specify how much to think using enum instead of integer budget.
public enum ThinkingLevel: String, Codable {

	/// Default value.
	case unspecified = "THINKING_LEVEL_UNSPECIFIED"

	/// Low thinking level.
	case low = "LOW"

	/// High thinking level.
	case high = "HIGH"
}
