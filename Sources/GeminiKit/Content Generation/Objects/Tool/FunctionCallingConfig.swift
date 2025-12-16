/// Configuration for specifying function calling behavior.
public struct FunctionCallingConfig: Codable {

	/// Optional. Specifies the mode in which function calling should execute. If unspecified, the default value will be set to AUTO.
	public var mode: Mode?

	/// Optional. A set of function names that, when provided, limits the functions the model will call.
	/// This should only be set when the Mode is ANY or VALIDATED. Function names should match [FunctionDeclaration.name]. When set, model will predict a function call from only allowed function names.
	public var allowedFunctionNames: [String]?

	/// Defines the execution behavior for function calling by defining the execution mode.
	public enum Mode: String, Codable {

		/// Unspecified function calling mode. This value should not be used.
		case unspecified = "MODE_UNSPECIFIED"

		/// Default model behavior, model decides to predict either a function call or a natural language response.
		case auto = "AUTO"

		/// Model is constrained to always predicting a function call only. If "allowedFunctionNames" are set, the predicted function call will be limited to any one of "allowedFunctionNames", else the predicted function call will be any one of the provided "functionDeclarations".
		case any = "ANY"

		/// Model will not predict any function call. Model behavior is same as when not passing any function declarations.
		case none = "NONE"

		/// Model decides to predict either a function call or a natural language response, but will validate function calls with constrained decoding. If "allowedFunctionNames" are set, the predicted function call will be limited to any one of "allowedFunctionNames", else the predicted function call will be any one of the provided "functionDeclarations".
		case validated = "VALIDATED"
	}
}
