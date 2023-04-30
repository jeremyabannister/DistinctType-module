//
//  DistinctType.swift
//  
//
//  Created by Jeremy Bannister on 5/1/23.
//

///
@_exported import FoundationToolkit


///
public struct DistinctType
    <Value, TypeDistinguisher>:
        ExpressionErgonomic {
    
    ///
    public var value: Value
    public init (value: Value) { self.value = value }
}

///
extension DistinctType: RandomlyGeneratable
    where Value: RandomlyGeneratable {
    
    ///
    public static func generateRandom () -> Self {
        .init(value: .generateRandom())
    }
}

///
extension DistinctType: CustomStringConvertible
    where Value: CustomStringConvertible {
    
    ///
    public var description: String {
        value.description
    }
}

///
extension DistinctType: Codable
    where Value: Codable {
    
    ///
    public init (from decoder: Decoder) throws {
        try self.init(value: .init(from: decoder))
    }
    
    ///
    public func encode (to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
}

///
extension DistinctType: Hashable where Value: Hashable { }
extension DistinctType: Equatable where Value: Equatable { }
