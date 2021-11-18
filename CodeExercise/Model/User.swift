//
//  User.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name && lhs.address == rhs.address
    }
    
    let id: Int
    let name: String
    let address: Address?
}
