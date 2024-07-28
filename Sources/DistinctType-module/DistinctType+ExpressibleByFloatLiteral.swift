//
//  DistinctType+ExpressibleByFloatLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByFloatLiteral
    where UnderlyingType: ExpressibleByFloatLiteral {
    
    ///
    public typealias FloatLiteralType = UnderlyingType.FloatLiteralType
    
    ///
    public init(floatLiteral value: FloatLiteralType) {
        
        ///
        self.init(
            .init(floatLiteral: value)
        )
    }
}
