//
//  UserDetailView.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    var body: some View {
        Text(user.name)
            .bold()
        if (user.address != nil) {
        Text(user.address?.street ?? "")
        Text(user.address?.suite ?? "")
        Text(user.address?.city ?? "")
        Text(user.address?.zipCode ?? "")
        }
    }
    

}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User(id: 1, name: "Jim", address: nil))
    }
}
