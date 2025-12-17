/// Logprobs Result
public struct LogprobsResult: Codable {

	/// Length = total number of decoding steps.
	public var topCandidates: [TopCandidates]?

	/// Length = total number of decoding steps. The chosen candidates may or may not be in topCandidates.
	public var chosenCandidates: [Candidate]?

	/// Sum of log probabilities for all tokens.
	public var logProbabilitySum: Double?

	public init(
		topCandidates: [TopCandidates]? = nil,
		chosenCandidates: [Candidate]? = nil,
		logProbabilitySum: Double? = nil
	) {
		self.topCandidates = topCandidates
		self.chosenCandidates = chosenCandidates
		self.logProbabilitySum = logProbabilitySum
	}

	/// Candidates with top log probabilities at each decoding step.
	public struct TopCandidates: Codable {

		/// Sorted by log probability in descending order.
		public var candidates: [Candidate]?
		
		public init(candidates: [Candidate]?) {
			self.candidates = candidates
		}
	}

	/// Candidate for the logprobs token and score.
	public struct Candidate: Codable {

		/// The candidate’s token string value.
		public var token: String?

		/// The candidate’s token id value.
		public var tokenId: Int?

		/// The candidate's log probability.
		public var logProbability: Double?

		public init(token: String? = nil, tokenId: Int? = nil, logProbability: Double? = nil) {
			self.token = token
			self.tokenId = tokenId
			self.logProbability = logProbability
		}
	}
}
