/// A citation to a source for a portion of a specific response.
public struct CitationSource: Codable {

	/// Optional. Start of segment of the response that is attributed to this source.
	/// Index indicates the start of the segment, measured in bytes.
	public var startIndex: Int?

	/// Optional. End of the attributed segment, exclusive.
	public var endIndex: Int?

	/// Optional. URI that is attributed as a source for a portion of the text.
	public var uri: String?

	/// Optional. License for the GitHub project that is attributed as a source for segment.
	/// License info is required for code citations.
	public var license: String?
	
	public init(startIndex: Int? = nil, endIndex: Int? = nil, uri: String? = nil, license: String? = nil) {
		self.startIndex = startIndex
		self.endIndex = endIndex
		self.uri = uri
		self.license = license
	}
}
