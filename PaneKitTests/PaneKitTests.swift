//
//  PaneKitTests.swift
//  PaneKitTests
//
//  Created by Kaleb on 4/15/23.
//

import XCTest
@testable import PaneKit

final class PaneKitTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - Pane Encoding and Decoding
    
    func testPaneEncoding() throws {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        FileManager.default.createFile(atPath: "Users/kaleb/Desktop/TestPane.plist", contents: try encoder.encode(testPane))
    }
}

// MARK: - Constants

let testPane = {
    let category = PKCategory("Mac", icon: "laptopcomputer")
    let metadata = PKMetadata("General", icon: "gearshape", category: category)
    let pane = PKPane(metadata)
    return pane
}()

// MARK: - Structures

class TestControl: PKControl {
    typealias ControlType = TestControlType
    
    var name: String
    
    required init(_ name: String) {
        self.name = name
    }
}

class TestControlType: PKControlType {
    typealias PreferenceType = Bool
    
    static let name = "Test Control Type"
}
