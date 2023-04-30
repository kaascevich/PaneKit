//
//  CharacterPreferenceType.swift
//  PaneKit
//
//  Created by Kaleb on 4/30/23.
//

import Foundation

public struct CharacterPreferenceType: PreferenceType {
    public typealias ValueType = Character
    
    public static let name = "Character"
}

extension Character: Codable {
    public enum CodingKeys: String, CodingKey {
        case description
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(description, forKey: .description)
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let description = try values.decode(String.self, forKey: .description)
        guard description.count > 0 else {
            throw DecodingError.dataCorruptedError(forKey: CodingKeys.description, in: values, debugDescription: "Can't form a Character from an empty String")
        }
        guard description.count == 1 else {
            throw DecodingError.dataCorruptedError(forKey: CodingKeys.description, in: values, debugDescription: "Can't form a Character from a String containing more than one extended grapheme cluster")
        }
        self.init(description)
    }
}
