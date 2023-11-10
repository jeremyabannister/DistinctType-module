//
//  DistinctType+ExpressibleByNilLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByNilLiteral
    where UnderlyingType: ExpressibleByNilLiteral {
    
    ///
    public init (nilLiteral: ()) {
        self.init(.init(nilLiteral: ()))
    }
}
