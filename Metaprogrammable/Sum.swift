//  Copyright © 2015 Rob Rix. All rights reserved.

public enum Sum {
	indirect case Branch(String, Product, Sum)
	case End
}
