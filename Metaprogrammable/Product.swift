//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Product {
	indirect case Field(String, Product)
	case End
}
