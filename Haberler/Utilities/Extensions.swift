//
//  Extensions.swift
//  Haberler
//
//  Created by Furkan Karakoc on 12.10.2021.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    // MARK: - Properties
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    // MARK: - Functions
    func setImage(fromUrl url: String) {
        guard let thumbnailUrl = URL(string: url) else { return }
        kf.setImage(with: thumbnailUrl)
    }
}

extension UIApplication {
    
    // MARK: - Functions
    func open(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        self.open(url)
    }
}

extension DateFormatter {
    
    // MARK: - Properties
    static let iso8601Full: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale.current
        
        return formatter
    }()
}
