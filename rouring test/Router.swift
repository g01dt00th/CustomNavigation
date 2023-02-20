//
//  Router.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

enum StartView: Int, Equatable {
    case sleep
    case login
    case vso
    case manager
}

final class Router: ObservableObject {
    @Published var currentView: StartView = .sleep
    @Published private(set) var transition: AnyTransition = .slideForward
    
    func stepBack() {
        let currentIndex = currentView.rawValue
        if let newView = StartView(rawValue: currentIndex - 1) {
            transition = .slideBackward
            withAnimation {
                currentView = newView
            }
        }
    }
    
    func open(_ view: StartView) {
        transition = .slideForward
        withAnimation {
            currentView = view
        }
    }
    
    func back(to view: StartView) {
        transition = .slideBackward
        withAnimation {
            currentView = view
        }
    }
}
