//
//  DistinctType+Encodable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Encodable
    where UnderlyingType: Encodable {
    
    ///
    public func encode (to encoder: Encoder) throws {
        try underlyingValue.encode(to: encoder)
    }
}
