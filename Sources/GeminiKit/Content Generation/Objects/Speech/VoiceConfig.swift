/// The configuration for the voice to use.
public struct VoiceConfig: Codable {

	/// The configuration for the prebuilt voice to use.
	public var prebuiltVoiceConfig: PrebuiltVoiceConfig

	/// The configuration for the prebuilt speaker to use.
	public struct PrebuiltVoiceConfig: Codable {

		/// The name of the preset voice to use.
		public var voiceName: String
	}
}
