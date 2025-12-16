/// Config for thinking features.
public struct ThinkingConfig: Codable {

	/// Indicates whether to include thoughts in the response. If true, thoughts are returned only when available.
	public var includeThoughts: Bool?

	/// The number of thoughts tokens that the model should generate.
	public var thinkingBudget: Int?

	/// Optional. Controls the maximum depth of the model's internal reasoning process before it produces a response. If not specified, the default is HIGH. Recommended for Gemini 3 or later models.
	/// Use with earlier models results in an error.
	public var thinkingLevel: ThinkingLevel?
}
