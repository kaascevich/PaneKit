//
//  PKControl.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import SwiftUI

/// Represents a control used to modify a value.
public protocol PKControl: Identifiable, Codable {
    // MARK: - Associated Types
    
    /// The type of this control.
    associatedtype ControlType: PKControlType
    
    // MARK: - Properties
    
    /// A short description of this control.
    var name: String { get }
}
