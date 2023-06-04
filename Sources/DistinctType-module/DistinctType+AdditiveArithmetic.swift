//
//  DistinctType+AdditiveArithmetic.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: AdditiveArithmetic
    where UnderlyingType: AdditiveArithmetic {
    
    ///
    public static var zero: Self {
        .init(.zero)
    }
    
    ///
    public static func + (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue + rhs.underlyingValue)
    }
    
    ///
    public static func += (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue += rhs.underlyingValue
    }
    
    ///
    public static func - (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue - rhs.underlyingValue)
    }
    
    ///
    public static func -= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue -= rhs.underlyingValue
    }
}
