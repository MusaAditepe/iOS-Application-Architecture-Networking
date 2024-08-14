//
//  PostViewModel.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import Foundation

class PostViewModel{
    
    var postId = 0
    var postItems = [Post]()
    var commentItems = [Comments]()
    
    func getPostItems(complete: @escaping((String?)->())){
        PostManager.shared.getPostItems{items, errorMessage in
            if let items = items {
                self.postItems = items
            }
            complete(errorMessage)
        }
    }
    func getPostComment(complete: @escaping((String?)->())){
        PostManager.shared.getPostComments(postId: postId) {items, errorMessage in
            if let items = items {
                self.commentItems = items
            }
            complete(errorMessage)
            
        }
    }
}
