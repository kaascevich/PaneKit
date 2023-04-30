//
//  PaneCategory.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import Foundation

/// A category for organizing panes.
public struct PaneCategory: Codable, Identifiable {
    // MARK: - Properties
    
    /// The name of this category.
    public var name: String
    
    /// The name of the SF symbol to use as this category's icon.
    public var icon: String? = nil
    
    // MARK: - Initializers
    
    /// Creates a category.
    ///
    /// - Parameters:
    ///   - name: The name of this category.
    ///   - icon: The name of the SF symbol to use as this category's icon.
    public init(_ name: String, icon: String? = nil) {
        self.name = name
        self.icon = icon
    }
    
    // MARK: - Identifiable Conformance
    
    public var id = UUID()
}
