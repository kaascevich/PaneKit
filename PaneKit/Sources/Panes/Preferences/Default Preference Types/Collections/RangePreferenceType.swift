//
//  RangePreferenceType.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public struct RangePreferenceType<Bound: PreferenceType>: PreferenceType where Bound.ValueType: Comparable {
    public typealias ValueType = Range<Bound.ValueType>
    
    public static var name: String {
        return "Range<\(Bound.name)>"
    }
}
