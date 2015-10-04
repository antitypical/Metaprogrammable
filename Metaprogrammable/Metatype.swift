//  Copyright © 2015 Rob Rix. All rights reserved.

/// A description of the structure of a type.
public enum Metatype {
	/// A structural, or algebraic, type.
	case Structural(Sum)

	/// An opaque reference to a type.
	case Opaque(Any.Type)

	/// A recursive reference to the type.
	///
	/// This can only appear within `Sum`s and `Product`s.
	case Recurrence
}
