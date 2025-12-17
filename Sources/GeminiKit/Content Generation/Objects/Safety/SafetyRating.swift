/// Safety rating for a piece of content.
/// The safety rating contains the category of harm and the harm probability level in that category for a piece of content. Content is classified for safety across a number of harm categories and the probability of the harm classification is included here.
public struct SafetyRating: Codable {

	/// Required. The category for this rating.
	public var category: HarmCategory?

	/// Required. The probability of harm for this content.
	public var probability: HarmProbability?

	/// Was this content blocked because of this rating?
	public var blocked: Bool?
	
	public init(category: HarmCategory? = nil, probability: HarmProbability? = nil, blocked: Bool? = nil) {
		self.category = category
		self.probability = probability
		self.blocked = blocked
	}
}
