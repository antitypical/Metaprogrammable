//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Product: ArrayLiteralConvertible, Metaprogrammable {
	indirect case Field(Metatype, Product)
	case End

	public init(arrayLiteral: Metatype...) {
		self = arrayLiteral.fold(.End, combine: Product.Field)
	}

	public static var metatype: Metatype {
		return Metatype(self, [
			"Field": [ Metatype.metatype, self.metatype ],
			"End": [],
		])
	}
}
