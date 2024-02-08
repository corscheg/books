//
//  BasicBooksRepository.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import Foundation

final class BasicBooksRepository {
    
    // MARK: Private Properties
    private let service: BooksService
    
    // MARK: Initializers
    init(service: BooksService) {
        self.service = service
    }
}

// MARK: - BooksRepository
extension BasicBooksRepository: BooksRepository {
    
}
