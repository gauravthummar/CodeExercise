//
//  Address.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import Foundation

struct Address: Codable, Hashable {
    let street: String?
    let suite: String?
    let city: String?
    let zipCode: String?
}
