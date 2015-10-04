//  Copyright © 2015 Rob Rix. All rights reserved.

public struct Field {
	public let label: String?
	public let type: Any.Type
	public let getter: () -> Any

	public init<T>(label: String, getter: () -> T) {
		self.label = label
		type = T.self
		self.getter = getter
	}

	public init<T>(getter: () -> T) {
		label = nil
		type = T.self
		self.getter = getter
	}
}
