//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___PresentationLogic {
    func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response)
}

final class ___VARIABLE_sceneName___Presenter {
    private weak var viewController: ___VARIABLE_sceneName___DisplayLogic?
    
    init(viewController: ___VARIABLE_sceneName___DisplayLogic?) {
        self.viewController = viewController
    }
}


// MARK: - ___VARIABLE_sceneName___PresentationLogic
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {
    
    func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response) {
        
        switch response {
            
        case .doSomething(let theNewItem, let isItem):
            presentDoSomething(theNewItem, isItem)
        }
    }
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___Presenter {
    
    func presentDoSomething(_ newItem: Int, _ isItem: Bool) {
        
        //prepare data for display and send it further
        
        viewController?.displayViewModel(.doSomething(viewModelData: NSObject()))
    }
}
