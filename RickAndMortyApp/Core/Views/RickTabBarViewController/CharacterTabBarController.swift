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
        
        let request = Request(endPoint: .character,queryParameters: [URLQueryItem(name: "name", value: "rick"), URLQueryItem(name: "status", value: "alive")])
        
        debugPrint(request.url)
        
        Service.shared.executeJSON(request, expecting: Character.self) { result in
            <#code#>
        }
    }
}
