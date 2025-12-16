/// Computer Use tool type.
public struct ComputerUse: Codable {

	/// Required. The environment being operated.
	public var environment: Environment
	
	public init(environment: Environment) {
		self.environment = environment
	}
}
