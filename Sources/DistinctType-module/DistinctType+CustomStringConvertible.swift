//
//  DistinctType+CustomStringConvertible.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: CustomStringConvertible
    where UnderlyingType: CustomStringConvertible {
    
    ///
    public var description: String {
        underlyingValue.description
    }
}
