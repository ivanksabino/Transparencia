//
//  Parlamentares.swift
//  Transparencia
//
//  Created by Ivan Sabino on 25/08/20.
//  Copyright © 2020 Ivan Sabino. All rights reserved.
//

import Foundation



// MARK: - Parlamentare
struct Parlamentare: Codable {
    let index: Int
    let txNomeParlamentar: String
    let vlrDocumento: Double
}

typealias Parlamentares = [Parlamentare]
