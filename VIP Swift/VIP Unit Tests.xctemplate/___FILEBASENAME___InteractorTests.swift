//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    
    private var presenter: ___VARIABLE_sceneName___PresenterSpy!
    private var interactor: ___VARIABLE_sceneName___Interactor!
    
    override func setUp() {
        interactor = ___VARIABLE_sceneName___Interactor(factory: self, viewController: nil, dataSource: ___VARIABLE_sceneName___Model.DataSource())
    }
    
    override func tearDown() {
        presenter = nil
        interactor = nil
    }
}


// MARK: - Tests
extension ___VARIABLE_sceneName___InteractorTests {
    
    func testExample() {
    }
}


// MARK: - ___VARIABLE_sceneName___Factorable
extension ___VARIABLE_sceneName___InteractorTests: ___VARIABLE_sceneName___Factorable {
    
    func makePresenter(viewController: ___VARIABLE_sceneName___DisplayLogic?) -> ___VARIABLE_sceneName___PresentationLogic {
        presenter = ___VARIABLE_sceneName___PresenterSpy()
        return presenter
    }
}


// MARK: - Spy Classes Setup
private extension ___VARIABLE_sceneName___InteractorTests {
    
    final class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresentationLogic {
        
        func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response) {
            
#warning("handle responses")
        }
    }
}
