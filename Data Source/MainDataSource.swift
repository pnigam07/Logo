//
//  MainDataSource.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import Foundation

protocol DataSource {
    func fetchLogoList()
}

protocol DataSourceDelegate {
    func didReceiveLogoList(logoList: Logos)
    func didReceiveWithError(error: Error)
}

class MainDataSource : DataSource {
    
    var delegate : DataSourceDelegate?

    func fetchLogoList() {
        loadJson(fileName: "logo")
    }
    
    func loadJson(fileName: String) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "txt") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Logos.self, from: data)
                delegate?.didReceiveLogoList(logoList: jsonData)
                
            } catch {
                let error = NSError.init(domain: "parsing erro", code: 111, userInfo: nil)
                delegate?.didReceiveWithError(error: error)
            }
        }
    }
}
