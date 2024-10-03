//
//  Extensions.swift
//  MySwiftUIPokedex
//
//  Created by patricia.martinez on 3/10/24.
//

import Foundation

extension Pokemon {
    var types: String {
        type.formatted(.list(type: .and))
    }
}
