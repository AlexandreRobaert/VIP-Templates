//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    
    private var presenter: ___VARIABLE_sceneName___Presenter!
    private var viewController: ___VARIABLE_sceneName___ViewControllerSpy!
    
    override func setUp() {
        viewController = ___VARIABLE_sceneName___ViewControllerSpy()
        presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
    }
    
    override func tearDown() {
        viewController = nil
        presenter = nil
    }
}


// MARK: - Tests
extension ___VARIABLE_sceneName___PresenterTests {
    
    func testExample() {
    }
}



// MARK: - Spy Classes Setup
private extension ___VARIABLE_sceneName___PresenterTests {
    
    final class ___VARIABLE_sceneName___ViewControllerSpy: UIViewController, ___VARIABLE_sceneName___DisplayLogic {
        
        func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel) {
            
#warning("handle viewModels")
        }
    }
}
