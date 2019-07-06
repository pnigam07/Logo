//
//  ViewController.swift
//  LogoGame
//
//  Created by pankaj on 7/6/19.
//  Copyright © 2019 Nigam. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private let presenter: MainViewPresenter

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    
    init() {
        
        let dataSource = MainDataSource()
        let useCase = MainUseCase(dataSource: dataSource)
        dataSource.delegate = useCase
        self.presenter = MainViewPresenter(useCase: useCase)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

