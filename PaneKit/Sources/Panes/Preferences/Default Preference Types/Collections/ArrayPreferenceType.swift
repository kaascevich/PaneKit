//
//  ArrayPreferenceType.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public struct ArrayPreferenceType<Element: PreferenceType>: PreferenceType {
    public typealias ValueType = Array<Element.ValueType>
    
    public static var name: String {
        return "List[\(Element.name)]"
    }
}
