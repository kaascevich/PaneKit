//
//  PreferenceStore.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public enum PreferenceStore: Codable, CustomStringConvertible {
    case global
    case local(String)
    
    public var description: String {
        switch self {
            case .global:
                return UserDefaults.globalDomain
            case .local(let name):
                return name
        }
    }
    
    public var store: UserDefaults? {
        return UserDefaults(suiteName: description)
    }
}
