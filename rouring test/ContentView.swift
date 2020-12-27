//
//  ContentView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI


extension AnyTransition {
    static var moveAndFade: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .scale(scale: 0.5))
        let removal = AnyTransition.scale(scale: 0.1)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


struct ContentView: View {
    @EnvironmentObject var router: Router
    
    
    var body: some View {
        if let view = router.views[router.currentView] {
            view
                .transition(.moveAndFade)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
