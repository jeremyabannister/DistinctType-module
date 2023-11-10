//
//  DistinctType+ExpressibleByUnicodeScalarLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByUnicodeScalarLiteral
    where UnderlyingType: ExpressibleByUnicodeScalarLiteral {
    
    ///
    public typealias UnicodeScalarLiteralType = UnderlyingType.UnicodeScalarLiteralType
    
    ///
    public init (unicodeScalarLiteral value: UnicodeScalarLiteralType) {
        self.init(.init(unicodeScalarLiteral: value))
    }
}
