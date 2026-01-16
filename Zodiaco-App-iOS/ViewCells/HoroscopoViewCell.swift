//
//  HoroscopoViewCell.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 15/1/26.
//

import UIKit

class HoroscopoViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var dateslabel: UILabel!
    @IBOutlet weak var favoriteimageview: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with horoscopo: Horoscopo) {
        namelabel.text = horoscopo.name
        dateslabel.text = horoscopo.dates
        iconImageView.image = horoscopo.getIcon()
        
        favoriteimageview.isHidden = !SessionManager().isfavorite(id: horoscopo.id)
        
    }
}
