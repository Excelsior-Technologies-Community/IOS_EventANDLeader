//
//  ViewController.swift
//  EventANDLeader
//
//  Created by Noman belim on 27/02/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  

    @IBOutlet weak var tbVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tbVIew.register(UINib(nibName: "EventCell", bundle: nil), forCellReuseIdentifier: "EventCell")
        tbVIew.dataSource = self
        tbVIew.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbVIew.dequeueReusableCell(withIdentifier: "EventCell" , for: indexPath ) as! EventCell
        
               cell.titleLabel.text = "Dhoom 2025 – Annual Cultural Festival"
               cell.descriptionLabel.text = "A vibrant cultural fest featuring music, dance, theatre, comedy shows, art zones and a food carnival."
               cell.registerLabel.text = "In App Registration | External Link"
               
               cell.eventImageView.image = UIImage(named: "IMG")
               
               return cell
    }
    
}

