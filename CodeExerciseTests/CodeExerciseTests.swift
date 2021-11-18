//
//  CodeExerciseTests.swift
//  CodeExerciseTests
//
//  Created by Jack on 11/4/21.
//

import XCTest

@testable import CodeExercise

class CodeExerciseTests: XCTestCase {
    /*
     The custom object User has to be equatable in order to be sorted. This is a test of equatability. Could be expanded, but it's just a simple working unit test based on something in the code.
     */
    
    func testUserForEquatable() throws {
        let user1 = User(id: 1, name: "Bob", address: nil)
        let user2 = User(id: 1, name: "Bob", address: nil)
        XCTAssertEqual(user1, user2)
        
        let user3 = User(id: 1, name: "Bob", address: nil)
        let user4 = User(id: 3, name: "Jim", address: nil)
        XCTAssertNotEqual(user3, user4)
    }
    
}
