//
//  Horoscopo.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 14/1/26.
//

import Foundation
import UIKit

struct Horoscopo {
    let id: String
    let name: String
    let dates: String
    
    
        
        func getIcon() -> UIImage? {
            UIImage(named: "horoscopo_icons/\(id)_icon")
        }
        
        static let horoscopeList: [Horoscopo] = [
            Horoscopo(id: "aries", name: "Aries", dates: "21 de marzo al 19 de abril"),
            Horoscopo(id: "taurus", name: "Tauro", dates: "20 de abril al 20 de mayo"),
            Horoscopo(id: "gemini", name: "Geminis", dates: "21 de mayo al 20 de junio"),
            Horoscopo(id: "cancer", name: "Cancer", dates: "21 de junio al 22 de julio"),
            Horoscopo(id: "leo", name: "Leo", dates: "23 de julio al 22 de agosto"),
            Horoscopo(id: "virgo", name: "Virgo", dates: "23 de agosto al 22 de septiembre"),
            Horoscopo(id: "libra", name: "Libra", dates: "23 de septiembre al 22 de octubre"),
            Horoscopo(id: "scorpio", name: "Escorpio", dates: "23 de octubre al 21 de noviembre"),
            Horoscopo(id: "sagittarius", name: "Sagitario", dates: "22 de noviembre al 21 de diciembre"),
            Horoscopo(id: "capricorn", name: "Capricornio", dates: "22 de diciembre al 19 de enero"),
            Horoscopo(id: "aquarius", name: "Acuario", dates: "20 de enero al 18 de febrero"),
            Horoscopo(id: "pisces", name: "Piscis", dates: "19 de febrero al 20 de marzo")
        ]
    
}
