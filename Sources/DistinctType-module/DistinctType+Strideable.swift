//
//  DistinctType+Strideable.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: Strideable
    where UnderlyingType: Strideable {
    
    ///
    public typealias Stride = UnderlyingType.Stride
    
    ///
    public func distance (to other: Self) -> Stride {
        self.underlyingValue.distance(to: other.underlyingValue)
    }
    
    ///
    public func advanced (by n: Self.Stride) -> Self {
        .init(self.underlyingValue.advanced(by: n))
    }
}
