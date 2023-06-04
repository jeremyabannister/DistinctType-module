//
//  DistinctType.swift
//  
//
//  Created by Jeremy Bannister on 5/1/23.
//

///
@_exported import ExpressionErgonomics
@_exported import RandomlyGeneratable_module


///
public struct DistinctType
    <UnderlyingType, Distinguisher>:
        ExpressionErgonomic {
    
    ///
    public var underlyingValue: UnderlyingType
    public init (underlyingValue: UnderlyingType) { self.underlyingValue = underlyingValue }
    public init (_ underlyingValue: UnderlyingType) { self.underlyingValue = underlyingValue }
}
