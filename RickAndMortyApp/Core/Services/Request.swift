//
//  Request.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation
final class Request {

    private let endPoint: EndPoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    ///Clouser
    private var urlString: String {
        
        var string = Constants.baseURL
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
                
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    public let httpMethod = "GET"
    public init(endPoint: EndPoint, pathComponents: [String] = [] , queryParameters: [URLQueryItem] = []){
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension Request {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
}

extension Request {
    static let characterRequest = Request(endPoint: .character)
    
}

extension Request {
    public var url: URL? {
     return URL(string: urlString)
    }
}
