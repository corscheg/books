//
//  BooksRepository.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import Foundation

protocol BooksRepository {
    func getBooks(completion: @escaping (Result<[Book], Error>) -> ())
    func getDetailBook(withID id: UUID, completion: @escaping (Result<BookDetail, Error>) -> ())
}
