//
//  Logo.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

struct Logos: Decodable {
    var logo: [Logo]
}

struct Logo : Decodable {
    var imageUrl: String
    var name: String
}

