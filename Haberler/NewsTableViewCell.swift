//
//  NewsTableViewCell.swift
//  Haberler
//
//  Created by Furkan Karakoc on 12.10.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    // MARK: - UI Elements
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var publishDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
}
