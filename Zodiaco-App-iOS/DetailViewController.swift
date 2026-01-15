//
//  DetailViewController.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 15/1/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    
    var horoscope: Horoscopo!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.title = horoscope.name
        navigationItem.subtitle = horoscope.dates
        
        iconImageView.image = horoscope.getIcon()
        
        
    }
    

  

}
