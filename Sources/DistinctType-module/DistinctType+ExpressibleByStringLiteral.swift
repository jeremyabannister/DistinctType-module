//
//  ExpressibleByStringLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByStringLiteral
    where UnderlyingType: ExpressibleByStringLiteral {
    
    ///
    public typealias StringLiteralType = UnderlyingType.StringLiteralType
    
    ///
    public init (stringLiteral value: StringLiteralType) {
        self.init(.init(stringLiteral: value))
    }
}
