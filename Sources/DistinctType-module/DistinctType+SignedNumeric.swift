//
//  DistinctType+SignedNumeric.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: SignedNumeric
    where UnderlyingType: SignedNumeric {
    
    ///
    public static prefix func - (operand: Self) -> Self {
        .init(-operand.underlyingValue)
    }
    
    ///
    public mutating func negate () {
        underlyingValue.negate()
    }
}
