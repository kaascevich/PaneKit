//
//  PaneMetadata.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import Foundation

/// Represents metadata for panes.
public struct PaneMetadata: Codable {
    // MARK: - Properties
    
    /// The name of this pane.
    public var name: String
    
    /// The name of the SF symbol to use as this pane's icon.
    public var icon: String? = nil
    
    /// The category this pane belongs in.
    public var category: PaneCategory?
    
    // MARK: - Initializers
    
    /// Creates a metadata object.
    ///
    /// - Parameters:
    ///   - name: The name of this pane.
    ///   - icon: The name of the SF symbol to use as this pane's icon.
    ///   - category: The category this pane belongs in.
    public init(_ name: String, icon: String? = nil, category: PaneCategory? = nil) {
        self.name = name
        self.icon = icon
        self.category = category
    }
}
