/// The configuration for the multi-speaker setup.
public struct MultiSpeakerVoiceConfig: Codable {

	/// Required. All the enabled speaker voices.
	public var speakerVoiceConfigs: [SpeakerVoiceConfig]

	/// The configuration for a single speaker in a multi speaker setup.
	public struct SpeakerVoiceConfig: Codable {

		/// Required. The name of the speaker to use. Should be the same as in the prompt.
		public var speaker: String

		/// Required. The configuration for the voice to use.
		public var voiceConfig: VoiceConfig
	}
}
