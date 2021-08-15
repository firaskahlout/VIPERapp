//
//  TodoListPresenter.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import Foundation

protocol TodoCellPresentation: AnyObject {
    func configure(for item: TodoItem)
}

protocol TodoListViewPresentation: AnyObject {
    func reloadData()
}

protocol TodoListInteraction: AnyObject {
    var items: [TodoItem] { get set }
    
    func loadTodos()
}

protocol TodoListRoute: AnyObject {
    
}

final class TodoListPresenter {
    
    // MARK: Properties
    
    weak var view: TodoListViewPresentation?
    var interactor: TodoListInteraction
    var router: TodoListRoute
    
    // MARK: Init
    
    init(
        view: TodoListViewPresentation?,
        interactor: TodoListInteraction,
        router: TodoListRoute
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - View Input

extension TodoListPresenter {
    
    var numberOfRows: Int {
        interactor.items.count
    }
    
    func viewDidLoad() {
        interactor.loadTodos()
    }
    
    func configure(cell: TodoCellPresentation, at indexPath: IndexPath) {
        cell.configure(for: interactor.items[indexPath.row])
    }
}

// MARK: - Interactor Input

extension TodoListPresenter {
    
    func didFinishLoading() {
        view?.reloadData()
    }
}
