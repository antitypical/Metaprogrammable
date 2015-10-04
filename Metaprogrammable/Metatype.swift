//  Copyright © 2015 Rob Rix. All rights reserved.

/// A description of the structure of a type.
public enum Metatype: Metaprogrammable {
	/// A structural, or algebraic, type.
	case Structural(Sum)

	/// An opaque reference to a type.
	case Opaque(Any.Type)



	public static var metatype: Metatype {
		return .Structural([
			"Structural": [ Sum.metatype ],
			"Opaque": [ .Opaque(Any.Type.self) ],
			"Recurrence": [],
		])
	}
}
