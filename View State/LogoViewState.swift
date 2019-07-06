//
//  LogoViewState.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

struct LogoViewState: Equatable {
    
    static func == (lhs: LogoViewState, rhs: LogoViewState) -> Bool {
        return lhs.imageUrl == rhs.imageUrl && lhs.name == rhs.name
    }
    
    public let logo: Logo?
    public var imageUrl: String?
    public var name: String?

    public let isValid: Bool
    
    init(logo: Logo?, isValid: Bool) {
        self.logo = logo
        
        self.imageUrl = logo?.imageUrl
        self.name = logo?.name
        self.isValid = isValid
    }
    
    static func empty() -> LogoViewState {
        return LogoViewState(logo: nil, isValid: false)
    }
    
}
