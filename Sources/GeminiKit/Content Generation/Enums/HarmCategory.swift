/// The category of a rating.
/// These categories cover various kinds of harms that developers may wish to adjust.
public enum HarmCategory: String, Codable {

	/// Category is unspecified.
	case unspecified = "HARM_CATEGORY_UNSPECIFIED"

	/// **PaLM** - Negative or harmful comments targeting identity and/or protected attribute.
	case derogatory = "HARM_CATEGORY_DEROGATORY"

	/// **PaLM** - Content that is rude, disrespectful, or profane.
	case toxicity = "HARM_CATEGORY_TOXICITY"

	/// **PaLM** - Describes scenarios depicting violence against an individual or group, or general descriptions of gore.
	case violence = "HARM_CATEGORY_VIOLENCE"

	/// **PaLM** - Contains references to sexual acts or other lewd content.
	case sexual = "HARM_CATEGORY_SEXUAL"

	/// **PaLM** - Promotes unchecked medical advice.
	case medical = "HARM_CATEGORY_MEDICAL"

	/// **PaLM** - Dangerous content that promotes, facilitates, or encourages harmful acts.
	case dangerous = "HARM_CATEGORY_DANGEROUS"

	/// **Gemini** - Harassment content.
	case harassment = "HARM_CATEGORY_HARASSMENT"

	/// **Gemini** - Hate speech and content.
	case hateSpeech = "HARM_CATEGORY_HATE_SPEECH"

	/// **Gemini** - Sexually explicit content.
	case sexuallyExplicit = "HARM_CATEGORY_SEXUALLY_EXPLICIT"

	/// **Gemini** - Dangerous content.
	case dangerousContent = "HARM_CATEGORY_DANGEROUS_CONTENT"

	/// **Gemini** - Content that may be used to harm civic integrity. DEPRECATED: use enableEnhancedCivicAnswers instead.
	@available(*, deprecated)
	case civicIntegrity = "HARM_CATEGORY_CIVIC_INTEGRITY"
}
