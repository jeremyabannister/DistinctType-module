//
//  DistinctType+Comparable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Comparable
    where UnderlyingType: Comparable {
    
    ///
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.underlyingValue < rhs.underlyingValue
    }
}
