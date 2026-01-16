//
//  DetailViewController.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 15/1/26.
//

import UIKit

class DetailViewController: UIViewController {

    
    // MARK: Outlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    // MARK: Properties
    
    var horoscope: Horoscopo!
    
    // MARK: Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.title = horoscope.name
        navigationItem.subtitle = horoscope.dates
        
        iconImageView.image = horoscope.getIcon()
        
        
    }
    

  

}
