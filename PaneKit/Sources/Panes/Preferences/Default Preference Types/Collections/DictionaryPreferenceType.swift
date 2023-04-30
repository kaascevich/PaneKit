//
//  DictionaryPreferenceType.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public struct DictionaryPreferenceType<Key: PreferenceType, Value: PreferenceType>: PreferenceType where Key.ValueType: Hashable {
    public typealias ValueType = Dictionary<Key.ValueType, Value.ValueType>
    
    public static var name: String {
        return "Dictionary[\(Key.name): \(Value.name)]"
    }
}
