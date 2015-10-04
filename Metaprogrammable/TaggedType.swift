//  Copyright © 2015 Rob Rix. All rights reserved.

public protocol TaggedType {
	typealias Tag: RawRepresentable

	var tag: Tag { get }
}
