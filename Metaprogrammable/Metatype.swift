//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Metatype {
	case Structural(Sum)
	case Opaque(Any.Type)
	case Recurrence
}
