//
//  MasterView.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import UIKit

final class MasterView: UIView {
    
    private typealias DataSource = UITableViewDiffableDataSource<Section, Book>
    private typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Book>
    
    private lazy var dataSource = DataSource(tableView: tableView) { tableView, indexPath, book in
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = book.title
        cell.contentConfiguration = config
        
        return cell
    }
    
    // MARK: Visual Components
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        return tableView
    }()
    
    // MARK: Initializers
    init() {
        super.init(frame: .zero)
        addSubviews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public Method
    func show(books: [Book]) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(books)
        dataSource.apply(snapshot)
    }
}

// MARK: - Private Methods
extension MasterView {
    func addSubviews() {
        addSubview(tableView)
    }
    
    func makeConstraints() {
        //
    }
}

// MARK: - Section
extension MasterView {
    private enum Section {
        case main
    }
}
