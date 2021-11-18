//
//  ContentView.swift
//  CodeExercise
//
//  Created by Jack on 11/4/21.
//

import SwiftUI

struct ContentView: View {
    var networkCall = NetworkCall()
    var body: some View {
        UserDisplayView().environmentObject(networkCall)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
