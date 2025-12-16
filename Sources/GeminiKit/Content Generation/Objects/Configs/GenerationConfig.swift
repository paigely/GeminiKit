/// Configuration options for model generation and outputs. Not all parameters are configurable for every model.
public struct GenerationConfig: Codable {

	/// Optional. The set of character sequences (up to 5) that will stop output generation. If specified, the API will stop at the first appearance of a stop_sequence. The stop sequence will not be included as part of the response.
	public var stopSequences: [String]?

	/// Optional. MIME type of the generated candidate text. Supported MIME types are: text/plain: (default) Text output. application/json: JSON response in the response candidates. text/x.enum: ENUM as a string response in the response candidates. Refer to the docs for a list of all supported text MIME types.
	public var responseMimeType: String?

	/// Optional. Output schema of the generated candidate text. Schemas must be a subset of the OpenAPI schema and can be objects, primitives or arrays.
	/// If set, a compatible responseMimeType must also be set. Compatible MIME types: application/json: Schema for JSON response. Refer to the JSON text generation guide for more details.
	public var responseSchema: Schema?

	/// Optional. Output schema of the generated response. This is an alternative to responseSchema that accepts JSON Schema.
	/// If set, responseSchema must be omitted, but responseMimeType is required.
	/// While the full JSON Schema may be sent, not all features are supported. Specifically, only the following properties are supported:
	/// * `$id`
	/// * `$defs`
	/// * `$ref`
	/// * `$anchor`
	/// * `type`
	/// * `format`
	/// * `title`
	/// * `description`
	/// * `enum` (for strings and numbers)
	/// * `items`
	/// * `prefixItems`
	/// * `minItems`
	/// * `maxItems`
	/// * `minimum`
	/// * `maximum`
	/// * `anyOf`
	/// * `oneOf` (interpreted the same as `anyOf`)
	/// * `properties`
	/// * `additionalProperties`
	/// * `required`
	/// The non-standard `propertyOrdering` property may also be set.
	/// Cyclic references are unrolled to a limited degree and, as such, may only be used within non-required properties. (Nullable properties are not sufficient.) If `$ref` is set on a sub-schema, no other properties, except for than those starting as a $, may be set.
	public var _responseJsonSchema: [String: String]?

	/// Optional. An internal detail. Use responseJsonSchema rather than this field.
	public var responseJsonSchema: [String: String]?

	/// Optional. The requested modalities of the response. Represents the set of modalities that the model can return, and should be expected in the response. This is an exact match to the modalities of the response.
	/// A model may have multiple combinations of supported modalities. If the requested modalities do not match any of the supported combinations, an error will be returned.
	/// An empty list is equivalent to requesting only text.
	public var responseModalities: [Modality]?

	/// Optional. Number of generated responses to return. If unset, this will default to 1. Please note that this doesn't work for previous generation models (Gemini 1.0 family)
	public var candidateCount: Int?

	/// Optional. The maximum number of tokens to include in a response candidate.
	/// Note: The default value varies by model, see the Model.output_token_limit attribute of the Model returned from the getModel function.
	public var maxOutputTokens: Int?

	/// Optional. Controls the randomness of the output.
	/// Note: The default value varies by model, see the Model.temperature attribute of the Model returned from the getModel function.
	/// Values can range from [0.0, 2.0].
	public var temperature: Float?

	/// Optional. The maximum cumulative probability of tokens to consider when sampling.
	/// The model uses combined Top-k and Top-p (nucleus) sampling.
	/// Tokens are sorted based on their assigned probabilities so that only the most likely tokens are considered. Top-k sampling directly limits the maximum number of tokens to consider, while Nucleus sampling limits the number of tokens based on the cumulative probability.
	/// Note: The default value varies by Model and is specified by theModel.top_p attribute returned from the getModel function. An empty topK attribute indicates that the model doesn't apply top-k sampling and doesn't allow setting topK on requests.
	public var topP: Float?

	/// Optional. The maximum number of tokens to consider when sampling.
	/// Gemini models use Top-p (nucleus) sampling or a combination of Top-k and nucleus sampling. Top-k sampling considers the set of topK most probable tokens. Models running with nucleus sampling don't allow topK setting.
	/// Note: The default value varies by Model and is specified by theModel.top_p attribute returned from the getModel function. An empty topK attribute indicates that the model doesn't apply top-k sampling and doesn't allow setting topK on requests.
	public var topK: Int?

	/// Optional. Seed used in decoding. If not set, the request uses a randomly generated seed.
	public var seed: Int?

	/// Optional. Presence penalty applied to the next token's logprobs if the token has already been seen in the response.
	/// This penalty is binary on/off and not dependant on the number of times the token is used (after the first). Use frequencyPenalty for a penalty that increases with each use.
	/// A positive penalty will discourage the use of tokens that have already been used in the response, increasing the vocabulary.
	/// A negative penalty will encourage the use of tokens that have already been used in the response, decreasing the vocabulary.
	public var presencePenalty: Float?

	/// Optional. Frequency penalty applied to the next token's logprobs, multiplied by the number of times each token has been seen in the respponse so far.
	/// A positive penalty will discourage the use of tokens that have already been used, proportional to the number of times the token has been used: The more a token is used, the more difficult it is for the model to use that token again increasing the vocabulary of responses.
	/// Caution: A *negative* penalty will encourage the model to reuse tokens proportional to the number of times the token has been used. Small negative values will reduce the vocabulary of a response. Larger negative values will cause the model to start repeating a common token until it hits the maxOutputTokens limit.
	public var frequencyPenalty: Float?

	/// Optional. If true, export the logprobs results in response.
	public var responseLogprobs: Bool?

	/// Optional. Only valid if responseLogprobs=True. This sets the number of top logprobs to return at each decoding step in the Candidate.logprobs_result. The number must be in the range of [0, 20].
	public var logprobs: Int?

	/// Optional. Enables enhanced civic answers. It may not be available for all models.
	public var enableEnhancedCivicAnswers: Bool?

	/// Optional. The speech generation config.
	public var speechConfig: SpeechConfig?

	/// Optional. Config for thinking features. An error will be returned if this field is set for models that don't support thinking.
	public var thinkingConfig: ThinkingConfig?

	/// Optional. Config for image generation. An error will be returned if this field is set for models that don't support these config options.
	public var imageConfig: ImageConfig?

	/// Optional. If specified, the media resolution specified will be used.
	public var mediaResolution: MediaResolution?
	
	public init(
		stopSequences: [String]? = nil,
		responseMimeType: String? = nil,
		responseSchema: Schema? = nil,
		_responseJsonSchema: [String: String]? = nil,
		responseJsonSchema: [String: String]? = nil,
		responseModalities: [Modality]? = nil,
		candidateCount: Int? = nil,
		maxOutputTokens: Int? = nil,
		temperature: Float? = nil,
		topP: Float? = nil,
		topK: Int? = nil,
		seed: Int? = nil,
		presencePenalty: Float? = nil,
		frequencyPenalty: Float? = nil,
		responseLogprobs: Bool? = nil,
		logprobs: Int? = nil,
		enableEnhancedCivicAnswers: Bool? = nil,
		speechConfig: SpeechConfig? = nil,
		thinkingConfig: ThinkingConfig? = nil,
		mediaResolution: MediaResolution? = nil
	) {
		self.stopSequences = stopSequences
		self.responseMimeType = responseMimeType
		self.responseSchema = responseSchema
		self._responseJsonSchema = _responseJsonSchema
		self.responseJsonSchema = responseJsonSchema
		self.responseModalities = responseModalities
		self.candidateCount = candidateCount
		self.maxOutputTokens = maxOutputTokens
		self.temperature = temperature
		self.topP = topP
		self.topK = topK
		self.seed = seed
		self.presencePenalty = presencePenalty
		self.frequencyPenalty = frequencyPenalty
		self.responseLogprobs = responseLogprobs
		self.logprobs = logprobs
		self.enableEnhancedCivicAnswers = enableEnhancedCivicAnswers
		self.speechConfig = speechConfig
		self.thinkingConfig = thinkingConfig
		self.mediaResolution = mediaResolution
	}

	/// Supported modalities of the response.
	public enum Modality: String, Codable {

		/// Default value.
		case unspecified = "MODALITY_UNSPECIFIED"

		/// Indicates the model should return text.
		case text = "TEXT"

		/// Indicates the model should return images.
		case image = "IMAGE"

		/// Indicates the model should return audio.
		case audio = "AUDIO"
	}
}
