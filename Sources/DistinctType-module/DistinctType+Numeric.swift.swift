//
//  DistinctType+Numeric.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Numeric
    where UnderlyingType: Numeric {
    
    ///
    public init? <T: BinaryInteger> (exactly source: T) {
        
        ///
        guard let underlyingValue = UnderlyingType(exactly: source) else { return nil }
        
        ///
        self.init(underlyingValue)
    }
    
    ///
    public typealias Magnitude = UnderlyingType.Magnitude
    
    ///
    public var magnitude: Magnitude {
        underlyingValue.magnitude
    }
    
    ///
    public static func * (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue * rhs.underlyingValue)
    }
    
    ///
    public static func *= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue *= rhs.underlyingValue
    }
}
