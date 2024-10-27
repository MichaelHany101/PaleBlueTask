//
//  HitModel.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import Foundation

class HitModel: Codable , Identifiable {
    let id: Int
    let pageURL: String
    let type: String
    let tags: String
    let previewURL: String
    let previewWidth: Int
    let previewHeight: Int
    let webformatURL: String
    let webformatWidth: Int
    let webformatHeight: Int
    let largeImageURL: String
    let imageWidth: Int
    let imageHeight: Int
    let imageSize: Int
    let views: Int
    let downloads: Int
    let collections: Int
    let likes: Int
    let comments: Int
    let userID: Int
    let user: String
    let userImageURL: String

    enum CodingKeys: String, CodingKey {
        case id, pageURL, type, tags, previewURL, previewWidth, previewHeight, webformatURL, webformatWidth, webformatHeight, largeImageURL, imageWidth, imageHeight, imageSize, views, downloads, collections, likes, comments
        case userID = "user_id"
        case user, userImageURL
    }

    init(id: Int, pageURL: String, type: String, tags: String, previewURL: String, previewWidth: Int, previewHeight: Int, webformatURL: String, webformatWidth: Int, webformatHeight: Int, largeImageURL: String, imageWidth: Int, imageHeight: Int, imageSize: Int, views: Int, downloads: Int, collections: Int, likes: Int, comments: Int, userID: Int, user: String, userImageURL: String) {
        self.id = id
        self.pageURL = pageURL
        self.type = type
        self.tags = tags
        self.previewURL = previewURL
        self.previewWidth = previewWidth
        self.previewHeight = previewHeight
        self.webformatURL = webformatURL
        self.webformatWidth = webformatWidth
        self.webformatHeight = webformatHeight
        self.largeImageURL = largeImageURL
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        self.imageSize = imageSize
        self.views = views
        self.downloads = downloads
        self.collections = collections
        self.likes = likes
        self.comments = comments
        self.userID = userID
        self.user = user
        self.userImageURL = userImageURL
    }
}
