//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Product: ArrayLiteralConvertible {
	indirect case Field(String, Product)
	case End

	public init(arrayLiteral: String...) {
		self = arrayLiteral.fold(.End, combine: Product.Field)
	}
}
