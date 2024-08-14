//
//  NetworkHelper.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import Foundation

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
}
enum ErrorType: String, Error{
    case invalidData = "Invalid Data"
    case invalidURL = "Invalid URL"
    case generalError = "An error Happend"
}

class NetworkHelper{
    static let shared = NetworkHelper()
    
    let baseURL = "https://jsonplaceholder.typicode.com/"
    
    let header = ["Auth": "Bearer"]
    
    func saveToken(token: String){
        
    }
}
