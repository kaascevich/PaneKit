//
//  PaneControl.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import SwiftUI

/// Represents a control used to modify a value.
public protocol PaneControl: Identifiable, Codable, View {
    
    // MARK: - Associated Types
    
    /// The type of value this control modifies.
    associatedtype Value: Codable;
    
    // MARK: - Properties
    
    /// The name used for this control type.
    static var type: String { get }
    
    /// A short description of this control.
    var name: String { get }
    
    /// The value this control modifies.
    var value: Binding<Value> { get set }
    
    // MARK: - Initializers
    
    init(_ value: Binding<Value>, _ name: String)
}
