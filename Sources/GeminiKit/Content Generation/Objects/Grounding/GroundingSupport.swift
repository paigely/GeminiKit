/// Grounding support.
public struct GroundingSupport: Codable {

	/// A list of indices (into 'grounding_chunk') specifying the citations associated with the claim. For instance [1,3,4] means that grounding_chunk[1], grounding_chunk[3], grounding_chunk[4] are the retrieved content attributed to the claim.
	public var groundingChunkIndices: [Int]

	/// Confidence score of the support references. Ranges from 0 to 1. 1 is the most confident. This list must have the same size as the groundingChunkIndices.
	public var confidenceScores: [Float]

	/// Segment of the content this support belongs to.
	public var segment: Segment

	/// Segment of the content.
	public struct Segment: Codable {

		/// Output only. The index of a Part object within its parent Content object
		public var partIndex: Int

		/// Output only. Start index in the given Part, measured in bytes. Offset from the start of the Part, inclusive, starting at zero.
		public var startIndex: Int

		/// Output only. End index in the given Part, measured in bytes. Offset from the start of the Part, exclusive, starting at zero.
		public var endIndex: Int

		/// Output only. The text corresponding to the segment from the response.
		public var text: String
	}
}
