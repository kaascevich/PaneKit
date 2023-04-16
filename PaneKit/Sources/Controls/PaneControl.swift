//
//  PaneControl.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import SwiftUI

public protocol PaneControl: Codable {
    associatedtype Value: Codable
    associatedtype Content: View
    
    static var type: String { get }
    
    var value: Value { get set }
    var name: String { get }
    
    var content: Content { get }
}
