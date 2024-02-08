//
//  MasterPresenterOutput.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import Foundation

protocol MasterPresenterOutput: AnyObject {
    func show(books: [Book])
}
