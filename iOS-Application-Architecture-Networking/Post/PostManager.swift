//
//  PostManager.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import Foundation

class PostManager{
    static let shared = PostManager()
    
    func getPostItems(complete: @escaping(([Post]?, String?)->())){
    let url = "\(NetworkHelper.shared.baseURL)posts"
        NetworkManager.shared.request(type: [Post].self,url: url,method: .get){response in
            
            switch response{
            case .success(let items):
                complete(items,nil)
            case .failure(let error):
                complete(nil,error.rawValue)
            }
        }
    }
    func getPostComments(postId: Int,complete: @escaping(([Comments]?, String?)->())){
    let url = "\(NetworkHelper.shared.baseURL)comments?postId=\(postId)"
        NetworkManager.shared.request(type: [Comments].self,url: url,method: .get){response in
            
            switch response{
            case .success(let items):  
                complete(items,nil)
            case .failure(let error):
                complete(nil,error.rawValue)
            }
        }
    }
}
