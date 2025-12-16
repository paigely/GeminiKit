/// Structured representation of a function declaration as defined by the OpenAPI 3.03 specification. Included in this declaration are the function name and parameters. This FunctionDeclaration is a representation of a block of code that can be used as a Tool by the model and executed by the client.
public struct FunctionDeclaration: Codable {

	/// Required. The name of the function. Must be a-z, A-Z, 0-9, or contain underscores, colons, dots, and dashes, with a maximum length of 64.
	public var name: String

	/// Required. A brief description of the function.
	public var description: String

	/// Optional. Specifies the function Behavior. Currently only supported by the BidiGenerateContent method.
	public var behavior: Behavior?

	/// Optional. Describes the parameters to this function. Reflects the Open API 3.03 Parameter Object string Key: the name of the parameter. Parameter names are case sensitive. Schema Value: the Schema defining the type used for the parameter.
	public var parameters: Schema?

	/// Optional. Describes the parameters to the function in JSON Schema format. The schema must describe an object where the properties are the parameters to the function. For example:
	/// ```json
	/// {
	///   "type": "object",
	///   "properties": {
	///     "name": { "type": "string" },
	///     "age": { "type": "integer" }
	///   },
	///   "additionalProperties": false,
	///   "required": ["name", "age"],
	///   "propertyOrdering": ["name", "age"]
	/// }
	/// ```
	/// This field is mutually exclusive with `parameters`.
	public var parametersJsonSchema: [String: String]?

	/// Optional. Describes the output from this function in JSON Schema format. Reflects the Open API 3.03 Response Object. The Schema defines the type used for the response value of the function.
	public var response: Schema?

	/// Optional. Describes the output from this function in JSON Schema format. The value specified by the schema is the response value of the function.
	/// This field is mutually exclusive with `response`.
	public var responseJsonSchema: [String: String]?

	/// Defines the function behavior. Defaults to BLOCKING.
	public enum Behavior: String, Codable {

		/// This value is unused.
		case unspecified = "UNSPECIFIED"

		/// If set, the system will wait to receive the function response before continuing the conversation.
		case blocking = "BLOCKING"

		/// If set, the system will not wait to receive the function response. Instead, it will attempt to handle function responses as they become available while maintaining the conversation between the user and the model.
		case nonBlocking = "NON_BLOCKING"
	}
}
