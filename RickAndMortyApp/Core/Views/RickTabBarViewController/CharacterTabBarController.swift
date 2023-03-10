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
        services()
    }
    private func services(){
        let _ = Service.shared.executeJSON(.characterRequest, expecting: CharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }

    }
}
