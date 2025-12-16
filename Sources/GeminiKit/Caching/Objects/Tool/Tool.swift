/// Tool details that the model may use to generate response.
/// A `Tool` is a piece of code that enables the system to interact with external systems to perform an action, or set of actions, outside of knowledge and scope of the model.
/// Next ID: 13
public struct Tool: Codable {

	/// Optional. A list of FunctionDeclarations available to the model that can be used for function calling.
	/// The model or system does not execute the function. Instead the defined function may be returned as a FunctionCall with arguments to the client side for execution. The model may decide to call a subset of these functions by populating FunctionCall in the response. The next conversation turn may contain a FunctionResponse with the Content.role "function" generation context for the next model turn.
	public var functionDeclarations: [FunctionDeclaration]?

	/// Optional. Retrieval tool that is powered by Google search.
	public var googleSearchRetrieval: GoogleSearchRetrieval?

	/// Optional. Enables the model to execute code as part of generation.
	public var codeExecution: CodeExecution?

	/// Optional. GoogleSearch tool type. Tool to support Google Search in Model. Powered by Google.
	public var googleSearch: GoogleSearch?

	/// Optional. Tool to support the model interacting directly with the computer. If enabled, it automatically populates computer-use specific Function Declarations.
	public var computerUse: ComputerUse?

	/// Optional. Tool to support URL context retrieval.
	public var urlContext: UrlContext?

	/// Optional. FileSearch tool type. Tool to retrieve knowledge from Semantic Retrieval corpora.
	public var fileSearch: FileSearch?

	/// Optional. Tool that allows grounding the model's response with geospatial context related to the user's query.
	public var googleMaps: GoogleMaps?
}
