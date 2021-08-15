//
//  TodoListInteractor.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import Foundation

final class TodoListInteractor {
    
    // MARK: Properties
    
    weak var presenter: TodoListPresenter?
    var items: [TodoItem] = []
}

// MARK: - TodoListInteraction

extension TodoListInteractor: TodoListInteraction {
    
    func loadTodos() {
        items = [
            .init(title: "Todo No. 1"),
            .init(title: "Todo No. 2"),
            .init(title: "Todo No. 3"),
            .init(title: "Todo No. 4")
        ]
        presenter?.didFinishLoading()
    }
}
