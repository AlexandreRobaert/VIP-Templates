//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class {
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
    //    func displaySomethingElse(viewModel: ___VARIABLE_sceneName___.SomethingElse.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UITableViewController, ___VARIABLE_sceneName___DisplayLogic {
    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Setup Clean Code Design Pattern
    
    private func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: - Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
        //        doSomethingElse()
    }
    
    //MARK: - receive events from UI
    //@IBOutlet weak var nameTextField: UITextField!
    
    //    @IBAction func cancelButtonTapped(_ sender: Any) {
    //
    //    }
    //
    //    @IBAction func confirmButtonTapped(_ sender: Any) {
    //
    //    }
    //
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething() {
        let request = ___VARIABLE_sceneName___.Something.Request()
        interactor?.doSomething(request: request)
    }
    //
    //    func doSomethingElse() {
    //        let request = ___VARIABLE_sceneName___.SomethingElse.Request()
    //        interactor?.doSomethingElse(request: request)
    //    }
    
    // MARK: - display view model from ___VARIABLE_sceneName___Presenter
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
    //
    //    func displaySomethingElse(viewModel: ___VARIABLE_sceneName___.SomethingElse.ViewModel) {
    //        // do sometingElse with viewModel
    //    }
}
