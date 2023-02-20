//
//  SleepView.swift
//  rouring test
//
//  Created by Роенко Денис on 23.12.2020.
//

import SwiftUI

struct SleepView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Sleep View")
            Button("goto Login") {
                router.open(.login)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}

struct SleepView_Previews: PreviewProvider {
    static var previews: some View {
        SleepView()
    }
}
