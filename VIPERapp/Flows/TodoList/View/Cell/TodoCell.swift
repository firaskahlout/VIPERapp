//
//  TodoCell.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import UIKit

final class TodoCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet private weak var label: UILabel!
    
}

extension TodoCell: TodoCellPresentation {
    func configure(for item: TodoItem) {
        label.text = item.title
    }
}
