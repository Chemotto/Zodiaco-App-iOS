//
//  ViewController.swift
//  Zodiaco-App-iOS
//
//  Created by Tardes on 14/1/26.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {

    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var horocospolist = Horoscopo.horoscopeList
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       tableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horocospolist.count
        
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Horoscopo Cell", for: indexPath) as! HoroscopoViewCell
        let horoscope = horocospolist[indexPath.row]
        cell.configure(with: horoscope)
        
        return cell
        
    
    }
    
    

}

