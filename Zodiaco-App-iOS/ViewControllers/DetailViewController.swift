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
    
    @IBOutlet weak var FavoriteButtonIcon: UIBarButtonItem!
    
    @IBOutlet weak var PredictionTextView: UITextView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: Properties
    
    var horoscope: Horoscopo!
    var session: SessionManager = SessionManager()
    var isFavorite: Bool = false
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        navigationItem.title = horoscope.name
        navigationItem.subtitle = horoscope.dates
        
        iconImageView.image = horoscope.getIcon()
        
        isFavorite = session.isfavorite(id: horoscope.id)
        setFavoriteIcon()
        
    }
    
    func setFavoriteIcon() {
        if isFavorite {
            FavoriteButtonIcon.image = UIImage(systemName: "heart.fill")
        } else {
            FavoriteButtonIcon.image = UIImage(systemName: "heart")
        }
    }
    
    
    // Mark: Actions
    
    
    @IBAction func didChangePeriod(_ sender: UISegmentedControl) {
    }
    
    
    
    
    @IBAction func setFavorite(_ sender: Any) {
        isFavorite = !isFavorite
        if isFavorite {
            session.setfavorite(id: horoscope.id)
        } else {
            session.setfavorite(id: "")
        }
        
        setFavoriteIcon()
    }
    
    @IBAction func share(_ sender: Any){
        
        
        
        
        func getHoroscopePrediction() {
            let url = URL(string: "https://itune.apple.com/")
            
            guard let url = url else {
                print("invalid url")
                return
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
            }
                
            
                
            }
            
        }
    }
    
