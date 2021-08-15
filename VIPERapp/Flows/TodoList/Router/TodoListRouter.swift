//
//  TodoListRouter.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import Foundation

final class TodoListRouter: TodoListRoute {
    
    static var viewController: TodoListViewController {
        let controller = TodoListViewController()
        let interactor = TodoListInteractor()
        let presenter = TodoListPresenter(
            view: controller,
            interactor: interactor,
            router: TodoListRouter()
        )
        interactor.presenter = presenter
        controller.presenter = presenter
        return controller
    }
    
}
