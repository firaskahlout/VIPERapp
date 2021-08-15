//
//  UITableView+Extention.swift
//  VIPERapp
//
//  Created by Firas Alkahlout on 15/08/2021.
//

import UIKit

extension UITableViewCell {
    static var identifier: String {
        "\(Self.self)"
    }
}

extension UITableView {
    func register<T: UITableViewCell>(cell: T.Type) {
        let nib = UINib(nibName: T.identifier, bundle: Bundle(for: cell))
        register(nib, forCellReuseIdentifier: T.identifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(at indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Error dequeuing cell for identifier \(T.identifier)")
        }
        return cell
    }
}
