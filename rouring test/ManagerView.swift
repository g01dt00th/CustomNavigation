//
//  ManagerView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

struct ManagerView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Manager View")
            Button("Logout") {
                router.back(to: .login)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
    }
}

struct ManagerView_Previews: PreviewProvider {
    static var previews: some View {
        ManagerView()
    }
}
