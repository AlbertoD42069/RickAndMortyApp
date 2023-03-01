//
//  CharacterTabBar.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/27/23.
//

import Foundation
import UIKit

class CharacterTabBarController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let services = Service.shared.executeJSON(.characterRequest, expecting: CharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
        /*
        let request = Request(endPoint: .character,queryParameters: [URLQueryItem(name: "name", value: "Morty"), URLQueryItem(name: "status", value: "")])
        
        debugPrint(request.url)
        
        Service.shared.executeJSON(request, expecting: Character.self) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
         */
    }
}
