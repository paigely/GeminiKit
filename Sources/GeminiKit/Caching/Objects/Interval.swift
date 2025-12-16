/// Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive).
/// The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
public struct Interval: Codable {

	/// Optional. Inclusive start of the interval.
	/// If specified, a Timestamp matching this interval will have to be the same or after the start.
	/// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
	public var startTime: String?

	/// Optional. Exclusive end of the interval.
	/// If specified, a Timestamp matching this interval will have to be before the end.
	/// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
	public var endTime: String?
}
