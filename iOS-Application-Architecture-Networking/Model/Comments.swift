//
//  Comments.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import Foundation
struct Comments: Codable {
    let postId : Int?
    let id: Int?
    let title: String?
    let body: String?
}
