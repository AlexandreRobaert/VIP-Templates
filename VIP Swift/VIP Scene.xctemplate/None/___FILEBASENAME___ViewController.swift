//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic where Self: UIViewController {
    
    func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel)
}

final class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    private let mainView: ___VARIABLE_sceneName___View
    private var interactor: ___VARIABLE_sceneName___Interactable!
    private var router: ___VARIABLE_sceneName___Routing!
    
    init(mainView: ___VARIABLE_sceneName___View, dataSource: ___VARIABLE_sceneName___Model.DataSource) {
        self.mainView = mainView
        
        super.init(nibName: nil, bundle: nil)
        interactor = ___VARIABLE_sceneName___Interactor(viewController: self, dataSource: dataSource)
        router = ___VARIABLE_sceneName___Router(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //interactor.doSomething(item: 22)
    }
    
    override func loadView() {
        view = mainView
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, You should't initialize the ViewController through Storyboards")
    }
}


// MARK: - ___VARIABLE_sceneName___DisplayLogic
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___DisplayLogic {
    
    func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel) {
        DispatchQueue.main.async {
            switch viewModel {
                
            case .doSomething(let viewModel):
                self.displayDoSomething(viewModel)
            }
        }
    }
}


// MARK: - ___VARIABLE_sceneName___ViewDelegate
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewDelegate {
    
    func sendDataBackToParent(_ data: Data) {
        //usually this delegate takes care of users actions and requests through UI
        
        //do something with the data or message send back from mainView
    }
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___ViewController {
    
    func displayDoSomething(_ viewModel: NSObject) {
        print("Use the mainView to present the viewModel")
        //example of using router
        router.routeTo(.xScene(xData: 22))
    }
}
