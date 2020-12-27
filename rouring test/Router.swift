//
//  Router.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

enum StartView: CaseIterable {
    case sleep
    case login
    case vso
    case manager
}

final class Router: ObservableObject {
    @Published var currentView: StartView = .sleep
    @Published var views: [StartView: AnyView] = [:]
    
    let animation: Animation = .spring()
    
    init() {
        views[.sleep] = AnyView(SleepView())
        views[.login] = AnyView(LoginView())
        views[.vso] = AnyView(VSOView())
        views[.manager] = AnyView(ManagerView())
    }
    
}
