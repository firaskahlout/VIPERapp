//
//  TodoListViewController.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import UIKit

final class TodoListViewController: UITableViewController {

    // MARK: Properties
    var presenter: TodoListPresenter!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(cell: TodoCell.self)
        presenter.viewDidLoad()
    }
    
    // MARK: tableView Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TodoCell = tableView.dequeueReusableCell(at: indexPath)
        presenter.configure(cell: cell, at: indexPath)
        return cell
    }
}

// MARK: - TodoListViewPresentation

extension TodoListViewController: TodoListViewPresentation {
    func reloadData() {
        tableView.reloadData()
    }
}
