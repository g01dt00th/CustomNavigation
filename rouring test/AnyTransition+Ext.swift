//
//  AnyTransition+Ext.swift
//  rouring test
//
//  Created by d.roenko on 20.02.2023.
//

import SwiftUI

extension AnyTransition {
    static let slideForward = asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    static let slideBackward = asymmetric(
        insertion: .move(edge: .leading),
        removal: .move(edge: .trailing)
    )
}
