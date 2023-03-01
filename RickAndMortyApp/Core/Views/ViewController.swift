//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by MacBook Pro on 2/26/23.
//

import UIKit

final class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupTabBar()
        
    }
    
    func setupTabBar(){
        let character = CharacterTabBarController()
        let episode = EpisodeTabBarController()
        let location = LocationTabBarController()
        let setting = SettingTabBarController()
        
        character.title = "Personajes"
        episode.title = "Episodios"
        location.title = "Localizacion"
        setting.title = "Configuracion"
        
        character.navigationItem.largeTitleDisplayMode = .automatic
        episode.navigationItem.largeTitleDisplayMode = .automatic
        location.navigationItem.largeTitleDisplayMode = .automatic
        setting.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterNav = UINavigationController(rootViewController: character)
        let episodeNav = UINavigationController(rootViewController: episode)
        let locationNav = UINavigationController(rootViewController: location)
        let settingNav = UINavigationController(rootViewController: setting)
        
        let person = UIImage(systemName: "person.fill")
        let video = UIImage(systemName: "tv.fill")
        let locat = UIImage(systemName: "location.fill")
        let gearshape = UIImage(systemName: "gearshape.fill")
        
        characterNav.tabBarItem = UITabBarItem(title: "Personajes", image: person, tag: 1)
        episodeNav.tabBarItem = UITabBarItem(title: "Episodios", image: video, tag: 2)
        locationNav.tabBarItem = UITabBarItem(title: "Localizacion", image: locat, tag: 3)
        settingNav.tabBarItem = UITabBarItem(title: "Configuracion", image: gearshape, tag: 4)

        let items = [characterNav, episodeNav, locationNav, settingNav]
        
        for nav in items {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(items, animated: true)
    }
    
}

