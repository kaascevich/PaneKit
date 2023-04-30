//
//  PreferenceType.swift
//  PaneKit
//
//  Created by Kaleb on 4/23/23.
//

import SwiftUI

/// Represents a type of preference.
public protocol PreferenceType: Codable {
    // MARK: - Associated Types
    
    /// The underlying preference type.
    associatedtype ValueType: Codable
    
    // MARK: - Properties
    
    /// The name used for this preference type.
    static var name: String { get }
}
