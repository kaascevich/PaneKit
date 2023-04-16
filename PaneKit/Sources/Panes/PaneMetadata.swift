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
    public var icon: String
    
    /// The category this pane belongs in.
    public var category: PaneCategory?
    
    // MARK: - Initializers
    
    /// Creates a metadata object.
    ///
    /// - Parameters:
    ///   - name: The name of this pane.
    ///   - systemImage: The name of the SF symbol to use as this pane's icon.
    ///   - category: The category this pane belongs in.
    public init(_ name: String, systemImage: String, category: PaneCategory? = nil) {
        self.name = name
        self.icon = systemImage
        self.category = category
    }
}
