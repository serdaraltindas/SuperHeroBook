//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Serdar Altındaş on 22.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var tableView: UITableView!
    
    var superKahramanIsimleri = [String]()
    var superKahramanGorselleri = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        
       
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    
}

