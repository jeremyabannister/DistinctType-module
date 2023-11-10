//
//  DistinctType+ExpressibleByBooleanLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByBooleanLiteral
    where UnderlyingType: ExpressibleByBooleanLiteral {
    
    ///
    public typealias BooleanLiteralType = UnderlyingType.BooleanLiteralType
    
    ///
    public init (booleanLiteral value: BooleanLiteralType) {
        self.init(.init(booleanLiteral: value))
    }
}
