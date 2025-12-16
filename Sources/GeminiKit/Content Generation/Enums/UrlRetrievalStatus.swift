/// Status of the url retrieval.
public enum UrlRetrievalStatus: String, Codable {

	/// Default value. This value is unused.
	case unspecified = "URL_RETRIEVAL_STATUS_UNSPECIFIED"

	/// Url retrieval is successful.
	case success = "URL_RETRIEVAL_STATUS_SUCCESS"

	/// Url retrieval is failed due to error.
	case error = "URL_RETRIEVAL_STATUS_ERROR"

	/// Url retrieval is failed because the content is behind paywall.
	case paywall = "URL_RETRIEVAL_STATUS_PAYWALL"

	/// Url retrieval is failed because the content is unsafe.
	case unsafe = "URL_RETRIEVAL_STATUS_UNSAFE"
}
