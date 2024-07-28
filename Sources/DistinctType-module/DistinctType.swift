//
//  DistinctType.swift
//  
//
//  Created by Jeremy Bannister on 5/1/23.
//

///
public struct DistinctType<
    UnderlyingType,
    Distinguisher
>:
    ExpressionErgonomic {
    
    ///
    public var underlyingValue: UnderlyingType
    
    ///
    public init(
        underlyingValue: UnderlyingType
    ) {
        self.underlyingValue = underlyingValue
    }
    
    ///
    public init(
        _ underlyingValue: UnderlyingType
    ) {
        
        ///
        self.underlyingValue = underlyingValue
    }
}
