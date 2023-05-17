//
//  _exported_imports.swift
//  
//
//  Created by Jeremy Bannister on 5/1/23.
//

///
@_exported import DistinctType_module
@_exported import JSONToolkit
@_exported import Testable_module
@_exported import XCTestToolkit


///
final class distinct_type_tests: XCTestCase {
    
    ///
    func test_UUID_coding () throws {
        
        ///
        enum DummyDistinguisher { }
        
        ///
        typealias Subject = DistinctType<UUID, DummyDistinguisher>
        
        ///
        let uuid = UUID()
        
        ///
        let subject = Subject(value: uuid)
        
        ///
        let jsonData = try subject.asJSONData()
        
        ///
        try jsonData
            .utf8String
            .assertEqual(to: uuid.asJSONData().utf8String)
        
        ///
        try jsonData
            .jsonDecoded(as: Subject.self)
            .assertEqual(to: subject)
        
        ///
        try uuid
            .asJSONData()
            .jsonDecoded(as: Subject.self)
            .assertEqual(to: subject)
    }
}
