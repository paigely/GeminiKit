/// Represents the environment being operated, such as a web browser.
public enum Environment: String, Codable {

	/// Defaults to browser.
	case unspecified = "ENVIRONMENT_UNSPECIFIED"

	/// Operates in a web browser.
	case browser = "ENVIRONMENT_BROWSER"
}
