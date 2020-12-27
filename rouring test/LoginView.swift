//
//  LoginView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Login View")
            Button("vso") {
                withAnimation(router.animation) {
                router.currentView = .vso
                }
            }
            Button("manager") {
                withAnimation(router.animation) {
                router.currentView = .manager
                }
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
