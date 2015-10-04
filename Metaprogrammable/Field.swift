//  Copyright © 2015 Rob Rix. All rights reserved.

public struct Field {
	public let label: String?
	public let type: Any.Type
	public let getter: () -> Any
}
