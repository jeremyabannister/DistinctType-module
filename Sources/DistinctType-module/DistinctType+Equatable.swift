//
//  DistinctType+Equatable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

extension DistinctType: Equatable
    where UnderlyingType: Equatable {
    
    ///
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.underlyingValue == rhs.underlyingValue
    }
}
