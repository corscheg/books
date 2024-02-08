//
//  MasterPresenter.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import Foundation

final class MasterPresenter {
    
    weak var output: MasterPresenterOutput?
    
    // MARK: Private Properties
    private let repository: BooksRepository
    
    // MARK: Initializers
    init(repository: BooksRepository) {
        self.repository = repository
    }
}

// MARK: - MasterPresenterInput
extension MasterPresenter: MasterPresenterInput {
    func viewDidLoad() {
        repository.getBooks { [weak self] result in
            guard case let .success(books) = result else {
                // error
                return
            }
            
            self?.output?.show(books: books)
        }
    }
}
