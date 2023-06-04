//
//  DistinctType+Hashable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Hashable
    where UnderlyingType: Hashable {
    
    ///
    public func hash (into hasher: inout Hasher) {
        hasher.combine(underlyingValue)
    }
}
