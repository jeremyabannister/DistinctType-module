//
//  DistinctType+ExpressibleByIntegerLiteral.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: ExpressibleByIntegerLiteral
    where UnderlyingType: ExpressibleByIntegerLiteral {
    
    ///
    public typealias IntegerLiteralType = UnderlyingType.IntegerLiteralType
    
    ///
    public init(integerLiteral value: IntegerLiteralType) {
        
        ///
        self.init(
            .init(integerLiteral: value)
        )
    }
}
