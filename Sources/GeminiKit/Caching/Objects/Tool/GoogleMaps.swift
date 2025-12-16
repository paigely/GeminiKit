/// The GoogleMaps Tool that provides geospatial context for the user's query.
public struct GoogleMaps: Codable {

	/// Optional. Whether to return a widget context token in the GroundingMetadata of the response. Developers can use the widget context token to render a Google Maps widget with geospatial context related to the places that the model references in the response.
	public var enableWidget: Bool?
	
	public init(enableWidget: Bool? = nil) {
		self.enableWidget = enableWidget
	}
}
