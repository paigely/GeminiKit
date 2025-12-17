/// The configuration for the voice to use.
public struct VoiceConfig: Codable {

	/// The configuration for the prebuilt voice to use.
	public var prebuiltVoiceConfig: PrebuiltVoiceConfig?
	
	public init(prebuiltVoiceConfig: PrebuiltVoiceConfig? = nil) {
		self.prebuiltVoiceConfig = prebuiltVoiceConfig
	}

	/// The configuration for the prebuilt speaker to use.
	public struct PrebuiltVoiceConfig: Codable {

		/// The name of the preset voice to use.
		public var voiceName: String?
		
		public init(voiceName: String?) {
			self.voiceName = voiceName
		}
	}
}
