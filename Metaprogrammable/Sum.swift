//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Sum: DictionaryLiteralConvertible, Metaprogrammable {
	indirect case Branch((String, Product), Sum)
	case End

	public init(dictionaryLiteral: (String, Product)...) {
		self = dictionaryLiteral.fold(.End, combine: Sum.Branch)
	}

	public static var metatype: Metatype {
		return .Structural([
			"Branch": [ .Opaque(String.self), Product.metatype, .Recurrence ],
			"End": [],
		])
	}
}
