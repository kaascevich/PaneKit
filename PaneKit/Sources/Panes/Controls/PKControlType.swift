//
//  PKControlType.swift
//  PaneKit
//
//  Created by Kaleb on 4/23/23.
//

import SwiftUI

/// Represents a control used to modify a value.
public protocol PKControlType: Identifiable, Codable {
    // MARK: - Associated Types
    
    /// The type of preference that this control type modifies.
    associatedtype PreferenceType: Codable
    
    // MARK: - Properties
    
    /// The name used for this control type.
    static var name: String { get }
}
