//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Sum: DictionaryLiteralConvertible {
	indirect case Branch(String, Product, Sum)
	case End

	public init(dictionaryLiteral: (String, Product)...) {
		self = dictionaryLiteral.fold(.End) { .Branch($0.0, $0.1, $1) }
	}
}
