//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Product: ArrayLiteralConvertible, Metaprogrammable {
	indirect case Field((String?, Metatype), Product)
	case End

	public init(arrayLiteral: (String?, Metatype)...) {
		self = arrayLiteral.fold(.End, combine: Product.Field)
	}

	public static var metatype: Metatype {
		return .Structural([
			"Field": [ (nil, .Opaque(String.self)), (nil, .Recurrence) ],
			"End": [],
		])
	}
}
