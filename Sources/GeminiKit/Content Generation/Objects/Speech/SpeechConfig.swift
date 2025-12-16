/// The speech generation config.
public struct SpeechConfig: Codable {

	/// The configuration in case of single-voice output.
	public var voiceConfig: VoiceConfig

	/// Optional. The configuration for the multi-speaker setup. It is mutually exclusive with the voiceConfig field.
	public var multiSpeakerVoiceConfig: MultiSpeakerVoiceConfig?

	/// Optional. Language code (in BCP 47 format, e.g. "en-US") for speech synthesis.
	/// Valid values are: de-DE, en-AU, en-GB, en-IN, en-US, es-US, fr-FR, hi-IN, pt-BR, ar-XA, es-ES, fr-CA, id-ID, it-IT, ja-JP, tr-TR, vi-VN, bn-IN, gu-IN, kn-IN, ml-IN, mr-IN, ta-IN, te-IN, nl-NL, ko-KR, cmn-CN, pl-PL, ru-RU, and th-TH.
	public var languageCode: String?
	
	public init(voiceConfig: VoiceConfig, multiSpeakerVoiceConfig: MultiSpeakerVoiceConfig? = nil, languageCode: String? = nil) {
		self.voiceConfig = voiceConfig
		self.multiSpeakerVoiceConfig = multiSpeakerVoiceConfig
		self.languageCode = languageCode
	}
}
