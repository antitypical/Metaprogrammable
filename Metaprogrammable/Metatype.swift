//  Copyright © 2015 Rob Rix. All rights reserved.

/// A description of the structure of a type.
public enum Metatype: CustomStringConvertible, Metaprogrammable {
	/// A structural, or algebraic, type.
	case Structural(Any.Type, Sum)

	/// An opaque reference to a type.
	case Opaque(Any.Type)


	public var description: String {
		switch self {
		case let .Structural(t, _):
			return String(t)
		case let .Opaque(t):
			return String(t)
		}
	}

	public static var metatype: Metatype {
		return Structural(self, [
			"Structural": [ Sum.metatype ],
			"Opaque": [ .Opaque(Any.Type.self) ],
			"Recurrence": [],
		])
	}
}
