//
//  PKPane.swift
//  PaneKit
//
//  Created by Kaleb on 4/15/23.
//

import Foundation

/// Represents a pane.
public struct PKPane: Codable, Identifiable {
    // MARK: - Properties
    
    /// The metadata for this pane.
    public var metadata: PKMetadata
     
    // MARK: - Initializers
    
    /// Creates a pane from a metadata object.
    ///
    /// - Parameters:
    ///   - metadata: The metadata to identify this pane with.
    public init(_ metadata: PKMetadata) {
        self.metadata = metadata
    }
    
    /// Creates a pane.
    ///
    /// - Parameters:
    ///   - name: The name of this pane.
    ///   - icon: The name of the SF symbol to use as this pane's icon.
    ///   - category: The category this pane belongs in.
    public init(_ name: String, icon: String? = nil, category: PKCategory? = nil) {
        let metadata = PKMetadata(name, icon: icon, category: category)
        self.init(metadata)
    }
    
    // MARK: - Identifiable Conformance
    public var id = UUID()
}
