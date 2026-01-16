//
//  SesionManager.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 16/1/26.
//

import Foundation

class SessionManager {
    
    let defaults = UserDefaults.standard
    
    func setfavorite(id: String) {
        defaults.set(id, forKey: "favourite_horoscope")
    }
    
    func getfavorite() -> String {
        defaults.string(forKey: "favourite_horoscope") ?? ""
        
    }
    
    func isfavorite(id: String) -> Bool {
        id == getfavorite()
    }
}




