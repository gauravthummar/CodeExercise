//
//  MockNetworkCall.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import Foundation

class MockNetworkCall: NetworkCall {
    var mockUsers: [User] = []
    func stubMockData(stubMockUsers: [User]) {
        self.mockUsers = stubMockUsers
    }
    
    override func getUsers(completion: @escaping ([User]?) -> Void) {
        NSLog("called in mock")
        completion(mockUsers)
    }
}
