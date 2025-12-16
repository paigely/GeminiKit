/// The base structured datatype containing multi-part content of a message.
/// A Content includes a role field designating the producer of the Content and a parts field containing multi-part data that contains the content of the message turn.
public struct Content: Codable {

	/// Ordered `Parts` that constitute a single message. Parts may have different MIME types.
	public var parts: [Part]

	/// Optional. The producer of the content. Must be either 'user' or 'model'.
	/// Useful to set for multi-turn conversations, otherwise can be left blank or unset.
	public var role: Role?
	
	public init(parts: [Part], role: Role? = nil) {
		self.parts = parts
		self.role = role
	}

	public enum Role: String, Codable {
		case user, model
	}
}
