/// The FileSearch tool that retrieves knowledge from Semantic Retrieval corpora. Files are imported to Semantic Retrieval corpora using the ImportFile API.
public struct FileSearch: Codable {

	/// Required. The names of the fileSearchStores to retrieve from. Example: fileSearchStores/my-file-search-store-123
	public var fileSearchStoreNames: [String]

	/// Optional. Metadata filter to apply to the semantic retrieval documents and chunks.
	public var metadataFilter: String?

	/// Optional. The number of semantic retrieval chunks to retrieve.
	public var topK: Int?
}
