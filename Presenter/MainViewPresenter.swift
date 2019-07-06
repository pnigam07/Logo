//
//  MainViewPresenter.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

protocol MainViewDisplayer {
//    func fetchRecords()
//    func getFirstImage()
//    func getNextImage()
      func load()
}

class MainViewPresenter: MainViewDisplayer {
    private let useCase: UseCase
    
    init(useCase: UseCase) {
        self.useCase = useCase
        
    }
    func load() {
        useCase.load()
    }
    
    
}


