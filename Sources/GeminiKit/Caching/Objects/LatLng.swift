/// An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
public struct LatLng: Codable {

	/// The latitude in degrees. It must be in the range [-90.0, +90.0].
	public var latitude: Int

	/// The longitude in degrees. It must be in the range [-180.0, +180.0].
	public var longitude: Int
	
	public init(latitude: Int, longitude: Int) {
		self.latitude = latitude
		self.longitude = longitude
	}
}
