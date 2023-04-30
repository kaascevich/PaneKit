//
//  Preference.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

/// Wraps a UserDefaults value.
public struct Preference<T: PreferenceType>: Codable {
    // MARK: - Properties
    
    /// The user-friendly name of this preference.
    public var name: String
    
    /// The UserDefaults store containing this preference.
    public var store: PreferenceStore
    
    /// The actual name of the default that this preference wraps.
    public var key: String
    
    /// The underlying value of this preference.
    public var value: T? {
        get {
            return store.store?.object(forKey: key) as? T
        }
        set {
            store.store?.set(newValue, forKey: key)
        }
    }
    
    // MARK: - Initializers
    
    /// Creates a preference residing in a PreferenceStore.
    ///
    /// - Parameters:
    ///   - name: The user-friendly name of this preference.
    ///   - store: The UserDefaults store containing this preference.
    ///   - key: The actual name of the default that this preference wraps.
    ///   - value: The initial value to give to this preference.
    public init(_ name: String, in store: PreferenceStore, key: String, value: T? = nil) {
        self.name = name
        self.store = store
        self.key = key
        if let value {
            self.value = value
        }
    }
    
    /// Creates a preference residing in a UserDefaults store that is represented as a String..
    ///
    /// - Parameters:
    ///   - name: The user-friendly name of this preference.
    ///   - store: The UserDefaults store containing this preference.
    ///   - key: The actual name of the default that this preference wraps.
    ///   - value: The initial value to give to this preference.
    public init(_ name: String, in store: String, key: String, value: T? = nil) {
        self.name = name
        self.store = .local(store)
        self.key = key
        if let value {
            self.value = value
        }
    }
    
    // MARK: - Methods
    
    /// Removes this preference from the store.
    public func delete() {
        store.store?.removeObject(forKey: key)
    }
}
