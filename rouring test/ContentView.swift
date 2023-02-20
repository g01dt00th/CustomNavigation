//
//  ContentView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        switch router.currentView {
        case .sleep:
            SleepView()
                .transition(router.transition)
                .edgesIgnoringSafeArea(.all)
        case .manager:
            ManagerView()
                .transition(router.transition)
                .edgesIgnoringSafeArea(.all)
        case .login:
            LoginView()
                .transition(router.transition)
                .edgesIgnoringSafeArea(.all)
        case .vso:
            VSOView()
                .transition(router.transition)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Router())
    }
}
