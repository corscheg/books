//
//  AppDependencyContainer.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import UIKit

final class AppDependencyContainer {
    
    let service: BooksService
    let repository: BooksRepository
    
    init() {
        service = MockBooksService()
        repository = BasicBooksRepository(service: service)
    }
    
    func makeMasterViewController() -> UIViewController {
        let presenter = MasterPresenter(repository: repository)
        let viewController = MasterViewController(presenter: presenter)
        presenter.output = viewController
        let navigationController = UINavigationController(rootViewController: viewController)
        
        return navigationController
    }
}
