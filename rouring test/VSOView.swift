//
//  VSOView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

struct VSOView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("VSO View")
            Button("Logout") {
                router.back(to: .login)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
    }
}

struct VSOView_Previews: PreviewProvider {
    static var previews: some View {
        VSOView()
    }
}
