//
//  UserDisplayView.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import SwiftUI

struct UserDisplayView: View {
    @State var sortToggleAlphabetical: Bool = false
    @EnvironmentObject var networkCall: NetworkCall
     var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(networkCall.users, id: \.self) { user in
                        NavigationLink(destination: UserDetailView(user: user) ) {
                            Text(user.name)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(sortToggleAlphabetical ? "Sort ⬆️" : "Sort ⬇️") {
                        sortToggleAlphabetical.toggle()
                        if(sortToggleAlphabetical) {
                            let sortedUsersUp = networkCall.users.sorted {
                                $0.name > $1.name
                            }
                            networkCall.users = sortedUsersUp
                        } else {
                            let sortedUsersDown = networkCall.users.sorted {
                                $0.name < $1.name
                            }
                            networkCall.users = sortedUsersDown
                        }
                    }
                }
            }
            .onAppear {
                networkCall.getUsers()
            }
        }
    }

}
struct UserDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        UserDisplayView().environmentObject(NetworkCall())
    }
}
