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
    
    
    func getIconName() -> UIImage? {
        UIImage(named: "")
    }
    }
    

    static let horoscopoList: [Horoscopo] = [
        Horoscopo(id: "1", name: "aries", dates: "21 de enero al 18 de febrero"),
        Horoscopo(id: "2", name: "taurus", dates: "19 de febrero al 19 de marzo"),
        Horoscopo(id: "3", name: "gemini", dates: "20 de marzo al 20 de abril"),
        Horoscopo(id: "4", name: "cancer", dates: "21 de abril al 20 de mayo"),
        Horoscopo(id: "5", name: "leo", dates: "21 de mayo al 20 de junio"),
        Horoscopo(id: "6", name: "virgo", dates: "21 de junio al 22 de julio"),
        Horoscopo(id: "7", name: "libra", dates: "23 de julio al 22 de agosto"),
        Horoscopo(id: "8", name: "scorpio", dates: "23 de agosto al 22 de septiembre"),
        Horoscopo(id: "9", name: "sagittarius", dates: "23 de septiembre al 22 de octubre"),
        Horoscopo(id: "10", name: "capricon", dates: "23 de octubre al 21 de noviembre"),
        Horoscopo(id: "11", name: "acuarius", dates: "22 de noviembre al 21 de diciembre"),
        Horoscopo(id: "12", name: "pisces", dates: "22 de diciembre al 19 de enero"),
    ]
    
}
