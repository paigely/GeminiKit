/// A request to generate content.
public struct GenerateContentRequest: Codable {

	/// Required. The content of the current conversation with the model.
	/// For single-turn queries, this is a single instance. For multi-turn queries like chat, this is a repeated field that contains the conversation history and the latest request.
	public var contents: [Content]?

	/// Optional. A list of `Tools` the `Model` may use to generate the next response.
	/// A `Tool` is a piece of code that enables the system to interact with external systems to perform an action, or set of actions, outside of knowledge and scope of the `Model`. Supported `Tool`s are `Function` and `codeExecution`. Refer to the Function calling and the Code execution guides to learn more.
	public var tools: [Tool]?

	/// Optional. Tool configuration for any Tool specified in the request. Refer to the Function calling guide for a usage example.
	public var toolConfig: ToolConfig?

	/// Optional. A list of unique SafetySetting instances for blocking unsafe content.
	/// This will be enforced on the GenerateContentRequest.contents and GenerateContentResponse.candidates. There should not be more than one setting for each SafetyCategory type. The API will block any contents and responses that fail to meet the thresholds set by these settings. This list overrides the default settings for each SafetyCategory specified in the safetySettings. If there is no SafetySetting for a given SafetyCategory provided in the list, the API will use the default safety setting for that category. Harm categories HARM_CATEGORY_HATE_SPEECH, HARM_CATEGORY_SEXUALLY_EXPLICIT, HARM_CATEGORY_DANGEROUS_CONTENT, HARM_CATEGORY_HARASSMENT, HARM_CATEGORY_CIVIC_INTEGRITY are supported. Refer to the guide for detailed information on available safety settings. Also refer to the Safety guidance to learn how to incorporate safety considerations in your AI applications.
	public var safetySettings: [SafetySetting]?

	/// Optional. Developer set system instruction(s). Currently, text only.
	public var systemInstruction: Content?

	/// Optional. Configuration options for model generation and outputs.
	public var generationConfig: GenerationConfig?

	/// Optional. The name of the content cached to use as context to serve the prediction. Format: `cachedContents/{cachedContent}`
	public var cachedContent: String?
	
	public init(
		contents: [Content]? = nil,
		tools: [Tool]? = nil,
		toolConfig: ToolConfig? = nil,
		safetySettings: [SafetySetting]? = nil,
		systemInstruction: Content? = nil,
		generationConfig: GenerationConfig? = nil,
		cachedContent: String? = nil
	) {
		self.contents = contents
		self.tools = tools
		self.toolConfig = toolConfig
		self.safetySettings = safetySettings
		self.systemInstruction = systemInstruction
		self.generationConfig = generationConfig
		self.cachedContent = cachedContent
	}
}
