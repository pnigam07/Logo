//
//  LogoViewState.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

struct LogoViewStates: Equatable {
    public let logos: [LogoViewState]
    
    
    
}

extension LogoViewStates {
    
    static func initialState() -> LogoViewStates{
        return LogoViewStates(logos: [])
    }
    
}


