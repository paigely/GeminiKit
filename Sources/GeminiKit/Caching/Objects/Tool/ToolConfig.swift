/// The Tool configuration containing parameters for specifying `Tool` use in the request.
public struct ToolConfig: Codable {

	/// Optional. Function calling config.
	public var functionCallingConfig: FunctionCallingConfig?

	/// Optional. Retrieval config.
	public var retrievalConfig: RetrievalConfig?
}
