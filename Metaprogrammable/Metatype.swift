//  Copyright © 2015 Rob Rix. All rights reserved.

/// A description of the structure of a type.
public enum Metatype: CustomStringConvertible, Metaprogrammable {
	/// A structural, or algebraic, type.
	case Structural(Any.Type, () -> Sum)

	/// An opaque reference to a type.
	case Opaque(Any.Type)


	public var type: Any.Type {
		switch self {
		case let .Structural(t, _):
			return t
		case let .Opaque(t):
			return t
		}
	}

	public init<T>(_ type: T.Type, @autoclosure(escaping) _ structure: () -> Sum) {
		self = Structural(type, structure)
	}


	public var description: String {
		return String(type)
	}

	public static var metatype: Metatype {
		return Metatype(self, [
			"Structural": [ Sum.metatype ],
			"Opaque": [ .Opaque(Any.Type.self) ],
		])
	}
}
