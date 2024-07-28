//
//  DistinctType+RandomlyGeneratable.swift
//  
//
//  Created by Jeremy Bannister on 5/18/23.
//

///
extension DistinctType: RandomlyGeneratable
    where UnderlyingType: RandomlyGeneratable {
    
    ///
    public static func generateRandom() -> Self {
        
        ///
        .init(
            underlyingValue: .generateRandom()
        )
    }
}
