//
//  MainUseCase.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

protocol UseCase {
    
    func isValid(name:String) -> Bool
    func load()
}

protocol useCaseDelegate {
    func didUpdateWithResult(result:Result<Any, Error>)
}

class MainUseCase: UseCase {
    
    private let dataSource : MainDataSource
    fileprivate var logos: Logos?
    
    init(dataSource: MainDataSource) {
        self.dataSource = dataSource
    }
    
    func isValid(name: String) -> Bool {
        return true
    }
    
    func load() {
        self.dataSource.fetchLogoList()
    }
    
    private func getLogoViewState() {
        
    //    return viewStateFactory(logos: self.logos ?? [l)
        
    }
}

extension MainUseCase : DataSourceDelegate {
    
    func didReceiveLogoList(logoList: Logos) {
        self.logos = logoList
    }
    func didReceiveWithError(error: Error) {
        print(error)
    }
    
    
    
}

extension MainUseCase {
    
    func viewStateFactory(logos: Logos ) -> LogoViewStates {
        let  logos = logos.logo.map { LogoViewState(logo: $0, isValid: false) }
        return LogoViewStates(logos: logos)
    }
}
