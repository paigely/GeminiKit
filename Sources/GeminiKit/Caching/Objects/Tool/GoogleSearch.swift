/// GoogleSearch tool type. Tool to support Google Search in Model. Powered by Google.
public struct GoogleSearch: Codable {

	/// Optional. Filter search results to a specific time range. If customers set a start time, they must set an end time (and vice versa).
	public var timeRangeFilter: Interval?
	
	public init(timeRangeFilter: Interval?) {
		self.timeRangeFilter = timeRangeFilter
	}
}
