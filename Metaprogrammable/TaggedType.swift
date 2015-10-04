//  Copyright © 2015 Rob Rix. All rights reserved.

public protocol TaggedType {
	typealias Tag: RawRepresentable

	var tag: Tag { get }
}

public struct TaggedSum<T: TaggedType where T.Tag.RawValue == String>: DictionaryLiteralConvertible {
	public init(dictionaryLiteral branches: (T.Tag, Product)...) {
		self.branches = branches
	}

	public let branches: [(T.Tag, Product)]

	public var sum: Sum {
		return Sum(branches: branches.map { ($0.rawValue, $1) })
	}
}
