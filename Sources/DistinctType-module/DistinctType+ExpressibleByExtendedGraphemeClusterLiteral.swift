//
//  DistinctType+ExpressibleByExtendedGraphemeClusterLiteral.swift
//
//
//  Created by Jeremy Bannister on 11/10/23.
//

///
extension DistinctType: ExpressibleByExtendedGraphemeClusterLiteral
    where UnderlyingType: ExpressibleByExtendedGraphemeClusterLiteral {
    
    ///
    public typealias ExtendedGraphemeClusterLiteralType = UnderlyingType.ExtendedGraphemeClusterLiteralType
    
    ///
    public init (extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(.init(extendedGraphemeClusterLiteral: value))
    }
}
