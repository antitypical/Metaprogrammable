//  Copyright © 2015 Rob Rix. All rights reserved.

extension CollectionType where Index: BidirectionalIndexType {
	func fold<Result>(initial: Result, combine: (Generator.Element, Result) -> Result) -> Result {
		return lazy.reverse().reduce(initial) {
			combine($1, $0)
		}
	}
}
