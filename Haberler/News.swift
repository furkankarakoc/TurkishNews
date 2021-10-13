//
//  News.swift
//  Haberler
//
//  Created by Furkan Karakoc on 12.10.2021.
//

import Foundation

struct News: Codable {
    
    // MARK: - Properties
    var title: String
    var pubDate: Date
    var link: String
    var thumbnail: String
    var categories: [String]
}
