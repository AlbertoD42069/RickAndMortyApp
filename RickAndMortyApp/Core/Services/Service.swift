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
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(ServicesError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? ServicesError.failedtoGetData))
                return
            }
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
                /*
                let json = try JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
                 */
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
        }
}

extension Service {
    public func request(from request: Request) -> URLRequest?{
        guard let url = request.url else {return nil}
        var requests = URLRequest(url: url)
        requests.httpMethod = request.httpMethod
        return requests
    }
}
extension Service {
    enum ServicesError: Error {
        case failedToCreateRequest
        case failedtoGetData
    }
}
