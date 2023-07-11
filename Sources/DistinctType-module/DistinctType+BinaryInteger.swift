//
//  DistinctType+BinaryInteger.swift
//  
//
//  Created by Jeremy Bannister on 6/4/23.
//

///
extension DistinctType: BinaryInteger
    where UnderlyingType: BinaryInteger {
    
    ///
    public static var isSigned: Bool {
        UnderlyingType.isSigned
    }
    
    ///
    public init? <T: BinaryFloatingPoint> (exactly source: T) {
        
        ///
        guard let underlyingValue = UnderlyingType(exactly: source) else { return nil }
        
        ///
        self.init(underlyingValue)
    }
    
    ///
    public init <T: BinaryFloatingPoint> (_ source: T) {
        self.init(.init(source))
    }
    
    ///
    public init <T: BinaryInteger> (_ source: T) {
        self.init(.init(source))
    }
    
    ///
    public init <T: BinaryInteger> (truncatingIfNeeded source: T) {
        self.init(.init(truncatingIfNeeded: source))
    }
    
    ///
    public init <T: BinaryInteger> (clamping source: T) {
        self.init(.init(clamping: source))
    }
    
    ///
    public typealias Words = UnderlyingType.Words
    
    ///
    public var words: Words {
        underlyingValue.words
    }
    
    ///
    public var bitWidth: Int {
        underlyingValue.bitWidth
    }
    
    ///
    public var trailingZeroBitCount: Int {
        underlyingValue.trailingZeroBitCount
    }
    
    ///
    public static func / (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue/rhs.underlyingValue)
    }
    
    ///
    public static func /= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue /= rhs.underlyingValue
    }
    
    ///
    public static func % (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue % rhs.underlyingValue)
    }
    
    ///
    public static func %= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue %= rhs.underlyingValue
    }
    
    ///
    public prefix static func ~ (x: Self) -> Self {
        .init(~x.underlyingValue)
    }
    
    ///
    public static func & (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue & rhs.underlyingValue)
    }
    
    ///
    public static func &= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue &= rhs.underlyingValue
    }
    
    ///
    public static func | (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue | rhs.underlyingValue)
    }
    
    ///
    public static func |= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue |= rhs.underlyingValue
    }
    
    ///
    public static func ^ (lhs: Self, rhs: Self) -> Self {
        .init(lhs.underlyingValue ^ rhs.underlyingValue)
    }
    
    ///
    public static func ^= (lhs: inout Self, rhs: Self) {
        lhs.underlyingValue ^= rhs.underlyingValue
    }
    
    ///
    public static func >> <RHS: BinaryInteger> (lhs: Self, rhs: RHS) -> Self {
        .init(lhs.underlyingValue >> rhs)
    }
    
    ///
    public static func >>= <RHS: BinaryInteger> (lhs: inout Self, rhs: RHS) {
        lhs.underlyingValue >>= rhs
    }
    
    ///
    public static func << <RHS: BinaryInteger> (lhs: Self, rhs: RHS) -> Self {
        .init(lhs.underlyingValue << rhs)
    }
    
    ///
    public static func <<= <RHS: BinaryInteger> (lhs: inout Self, rhs: RHS) {
        lhs.underlyingValue <<= rhs
    }
    
    ///
    public func quotientAndRemainder
        (dividingBy rhs: Self)
    -> (quotient: Self, remainder: Self) {
        
        ///
        let (quotient, remainder) =
            self
                .underlyingValue
                .quotientAndRemainder(
                    dividingBy: rhs.underlyingValue
                )
        
        ///
        return (.init(quotient), .init(remainder))
    }
    
    ///
    public func isMultiple (of other: Self) -> Bool {
        self.underlyingValue.isMultiple(of: other.underlyingValue)
    }
    
    ///
    public func signum () -> Self {
        .init(underlyingValue.signum())
    }
}
