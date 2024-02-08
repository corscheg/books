//
//  ViewController.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import UIKit

final class MasterViewController: UIViewController {
    
    // MARK: Private Properties
    private let presenter: MasterPresenterInput
    
    // MARK: Visual Components
    private lazy var masterView = MasterView()
    
    // MARK: Initializers
    init(presenter: MasterPresenterInput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: UIViewController
    override func loadView() {
        view = masterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

// MARK: - MasterPresenterOutput
extension MasterViewController: MasterPresenterOutput {
    func show(books: [Book]) {
        masterView.show(books: books)
    }
}
