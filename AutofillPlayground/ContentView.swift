//
//  ContentView.swift
//  AutofillPlayground
//
//  Created by Husnain Ali on 05.12.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = ViewModel()

    var body: some View {
        NavigationView {
            Group {
                if model.isSignedIn {
                    Authenticated(model: model)
                } else {
                    SignIn(model: model)
                }
            }
            .background(Color.gray)
        }
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
