//
//  Services.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation
final class Service {
    
    static let shared = Service()
    
    private init(){}
    
    public func executeJSON<T: Codable>(_ request: Request, expecting type: T.Type, completion: @escaping(Result<T,Error>) -> Void) {
        
    }
}
