//
//  PaneKitTests.swift
//  PaneKitTests
//
//  Created by Kaleb on 4/15/23.
//

import XCTest
@testable import PaneKit

final class PaneKitTests: XCTestCase {
    let plistEncoder = {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        return encoder
    }()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - Pane Encoding and Decoding
    
    func testPaneEncoding() throws {
        let encoded = try plistEncoder.encode(testPane)
        let string = String(data: encoded, encoding: .ascii)
        print(string!)
    }
    
    // MARK: - Control Encoding and Decoding
    
    func testControlEncoding() throws {
        let encoded = try plistEncoder.encode(testControl)
        let string = String(data: encoded, encoding: .ascii)
        print(string!)
    }
}

// MARK: - Panes

let testCategory = PaneCategory("Mac", icon: "laptopcomputer")
let testMetadata = PaneMetadata("General", icon: "gearshape", category: testCategory)
let testPane = Pane(testMetadata)

// MARK: - Controls

let testPreference = Preference<IntegerPreferenceType>("Test", in: .global, key: "testKey")
let testControl = Control<IntegerPreferenceType>(testPreference)
