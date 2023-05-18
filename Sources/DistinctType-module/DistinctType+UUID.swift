//
//  DistinctType+UUID.swift
//  
//
//  Created by Jeremy Bannister on 5/18/23.
//

///
extension DistinctType where UnderlyingType == UUID {
    
    ///
    public var uuidString: String {
        underlyingValue.uuidString
    }
}
