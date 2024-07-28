//
//  DistinctType+Decodable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Decodable
    where UnderlyingType: Decodable {
    
    ///
    public init(from decoder: Decoder) throws {
        
        ///
        try self.init(
            underlyingValue: .init(from: decoder)
        )
    }
}
