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
    var superKahramanGorselIsimleri = [String]()
    
    var secilenIsim = ""
    var secilenGorselIsmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Batman")
        //Görsel isimlerini burada tutuyoruz. Kendilerini ikinci ekranda alacağız.
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("batman")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    //silme butonu eklenecektir.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahramanIsimleri.remove(at: indexPath.row)
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            //TABLEVIEW deleteRows ile tableView üzerinden kaldırma işlemi yapıyoruz.Ve güncelliyoruz.
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenGorselIsmi = superKahramanGorselIsimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    //Bu şekilde burada kullandığımız ve göndermek istediğimiz bilgileri karşı tarafa gönderiyoruz.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGorselIsmi
        }
    }
}

