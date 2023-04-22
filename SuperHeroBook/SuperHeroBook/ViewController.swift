//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Serdar Altındaş on 22.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        var superKahramanIsimleri = [String]()
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        
        var superKahramanGorselleri = [UIImage]()
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        superKahramanGorselleri.append(UIImage(named: "batman")!)
        
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
}

