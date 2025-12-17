/// Safety setting, affecting the safety-blocking behavior.
/// Passing a safety setting for a category changes the allowed probability that content is blocked.
public struct SafetySetting: Codable {

	/// Required. The category for this setting.
	public var category: HarmCategory?

	/// Required. Controls the probability threshold at which harm is blocked.
	public var threshold: HarmBlockThreshold?
	
	public init(category: HarmCategory? = nil, threshold: HarmBlockThreshold? = nil) {
		self.category = category
		self.threshold = threshold
	}
}
