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

///
extension DistinctType: Hashable where UnderlyingType: Hashable { }

///
extension DistinctType: CustomStringConvertible
    where UnderlyingType: CustomStringConvertible {
    
    ///
    public var description: String {
        underlyingValue.description
    }
}

///
extension DistinctType: Codable
    where UnderlyingType: Codable {
    
    ///
    public init (from decoder: Decoder) throws {
        try self.init(underlyingValue: .init(from: decoder))
    }
    
    ///
    public func encode (to encoder: Encoder) throws {
        try underlyingValue.encode(to: encoder)
    }
}
