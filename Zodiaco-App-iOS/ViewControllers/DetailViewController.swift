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

    @IBAction func setFavorite(_ sender: Any) {
        isFavorite = !isFavorite
        if isFavorite {
            session.setfavorite(id: horoscope.id)
        } else {
            session.setfavorite(id: "")
        }
        
        setFavoriteIcon()
    }

    @IBAction func share(_ sender: Any) {

    }
}
