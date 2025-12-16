/// Retrieval config.
public struct RetrievalConfig: Codable {

	/// Optional. The location of the user.
	public var latLng: LatLng?

	/// Optional. The language code of the user. Language code for content. Use language tags defined by BCP47.
	public var languageCode: String?
}
