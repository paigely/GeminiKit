/// The Schema object allows the definition of input and output data types. These types can be objects, but also primitives and arrays. Represents a select subset of an OpenAPI 3.0 schema object.
public struct Schema: Codable {

	/// Required. Data type.
	public var type: SchemaType

	/// Optional. The format of the data. Any value is allowed, but most do not trigger any special functionality.
	public var format: String?

	/// Optional. The title of the schema.
	public var title: String?

	/// Optional. A brief description of the parameter. This could contain examples of use. Parameter description may be formatted as Markdown.
	public var description: String?

	/// Optional. Indicates if the value may be null.
	public var nullable: Bool?

	/// Optional. Possible values of the element of Type.STRING with enum format. For example we can define an Enum Direction as : {type:STRING, format:enum, enum:["EAST", NORTH", "SOUTH", "WEST"]}
	public var `enum`: [String]?

	/// Optional. Maximum number of the elements for Type.ARRAY.
	public var maxItems: String?

	/// Optional. Minimum number of the elements for Type.ARRAY.
	public var minItems: String?

	/// Optional. Properties of Type.OBJECT.
	/// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	public var properties: [String: Schema]?

	/// Optional. Required properties of Type.OBJECT.
	public var required: [String]?

	/// Optional. Minimum number of the properties for Type.OBJECT.
	public var minProperties: String?

	/// Optional. Maximum number of the properties for Type.OBJECT.
	public var maxProperties: String?

	/// Optional. SCHEMA FIELDS FOR TYPE STRING Minimum length of the Type.STRING
	public var minLength: String?

	/// Optional. Maximum length of the Type.STRING
	public var maxLength: String?

	/// Optional. Pattern of the Type.STRING to restrict a string to a regular expression.
	public var pattern: String?

	/// Optional. The value should be validated against any (one or more) of the subschemas in the list.
	public var anyOf: [Schema]?

	/// Optional. The order of the properties. Not a standard field in open api spec. Used to determine the order of the properties in the response.
	public var propertyOrdering: [String]?

	/// Optional. Schema of the elements of Type.ARRAY.
	public var items: [String: String]?

	/// Optional. SCHEMA FIELDS FOR TYPE INTEGER and NUMBER Minimum value of the Type.INTEGER and Type.NUMBER
	public var minimum: Double?

	/// Optional. Maximum value of the Type.INTEGER and Type.NUMBER
	public var maximum: Double?
}
