//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

typealias ___VARIABLE_sceneName___Interactable = ___VARIABLE_sceneName___BusinessLogic & ___VARIABLE_sceneName___DataStore

protocol ___VARIABLE_sceneName___BusinessLogic {
    
    func doRequest(_ request: ___VARIABLE_sceneName___Model.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    var dataSource: ___VARIABLE_sceneName___Model.DataSource { get }
}

final class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___DataStore {
    
    var dataSource: ___VARIABLE_sceneName___Model.DataSource
    
    private var presenter: ___VARIABLE_sceneName___PresentationLogic
    
    init(viewController: ___VARIABLE_sceneName___DisplayLogic?, dataSource: ___VARIABLE_sceneName___Model.DataSource) {
        self.dataSource = dataSource
        self.presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
    }
}


// MARK: - ___VARIABLE_sceneName___BusinessLogic
extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic {
    
    func doRequest(_ request: ___VARIABLE_sceneName___Model.Request) {
        DispatchQueue.global(qos: .userInitiated).async {
            
            switch request {
                
            case .doSomething(let item):
                self.doSomething(item)
            }
        }
    }
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___Interactor {
    
    func doSomething(_ item: Int) {
        
        //construct the Service right before using it
        //let serviceX = factory.makeXService()
        
        // get new data async or sync
        //let newData = serviceX.getNewData()
        
        presenter.presentResponse(.doSomething(newItem: item + 1, isItem: true))
    }
}
