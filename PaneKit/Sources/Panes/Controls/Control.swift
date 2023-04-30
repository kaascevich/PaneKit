//
//  Control.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public struct Control<T: PreferenceType>: Codable {
    // MARK: - Properties
    
    public var preference: Preference<T>
    
    // MARK: - Initializers
    
    public init(_ preference: Preference<T>) {
        self.preference = preference
    }
}
