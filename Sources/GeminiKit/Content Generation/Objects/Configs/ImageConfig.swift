/// Config for image generation features.
public struct ImageConfig: Codable {

	/// Optional. The aspect ratio of the image to generate. Supported aspect ratios: 1:1, 2:3, 3:2, 3:4, 4:3, 9:16, 16:9, 21:9.
	/// If not specified, the model will choose a default aspect ratio based on any reference images provided.
	public var aspectRatio: String?

	/// Optional. Specifies the size of generated images. Supported values are 1K, 2K, 4K. If not specified, the model will use default value 1K.
	public var imageSize: String?
}
