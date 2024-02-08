//
//  BooksService.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import Foundation

protocol BooksService {
    func getBooks(completion: @escaping (Result<[Book], Error>) -> ())
    func getDetailBook(withID id: UUID, completion: @escaping (Result<BookDetail, Error>) -> ())
}
