//
//  Pane.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import Foundation

/// Represents a pane.
public struct Pane: Codable, Identifiable {
    
    // MARK: - Properties
    
    /// The metadata for this pane.
    public var metadata: PaneMetadata
    
    // MARK: - Initializers
    
    /// Creates a pane using a metadata object.
    ///
    /// - Parameters:
    ///   - metadata: The metadata to identify this pane with.
    public init(_ metadata: PaneMetadata) {
        self.metadata = metadata
    }
    
    // MARK: - Identifiable Conformance
    public var id = UUID()
}
