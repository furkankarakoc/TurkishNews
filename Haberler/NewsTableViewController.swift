//
//  NewsTableViewController.swift
//  Haberler
//
//  Created by Furkan Karakoc on 12.10.2021.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    // MARK: - Functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let news = NewsData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        
        cell.thumbnailImageView.setImage(fromUrl: news.thumbnail)
        cell.titleLabel.text = news.title
        cell.categoryLabel.text = news.categories.joined(separator: " • ")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        
        let publishDateString = dateFormatter.string(from: news.pubDate)
        
        cell.publishDateLabel.text = publishDateString.uppercased()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNews = NewsData[indexPath.row]
        let newsUrl = selectedNews.link
        
        UIApplication.shared.open(urlString: newsUrl)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
