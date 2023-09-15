//
//  DistinctType+CodingKeyRepresentable.swift
//  
//
//  Created by Jeremy Bannister on 9/15/23.
//

///
@available(macOS 12.3, *)
@available(iOS 15.4, *)
@available(watchOS 8.5, *)
@available(tvOS 15.4, *)
extension DistinctType: CodingKeyRepresentable where UnderlyingType: CodingKeyRepresentable {
    
    ///
    public var codingKey: any CodingKey {
        underlyingValue.codingKey
    }
    
    ///
    public init? (codingKey: some CodingKey) {
        
        ///
        guard let underlyingValue = UnderlyingType(codingKey: codingKey) else { return nil }
        self.init(underlyingValue)
    }
}
