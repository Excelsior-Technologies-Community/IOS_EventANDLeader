//
//  LeadershipViewController.swift
//  EventANDLeader
//
//  Created by Noman belim on 27/02/26.
//

import UIKit

class LeadershipViewController: UIViewController{
 
    let leaders = [
        ("Dr. Devanshu Patel", "President", "person1"),
        ("Dr. Parul Patel", "Vice President", "person2"),
        ("Dr. Geetika Patel", "Vice President", "person3"),
        ("Dr. Komal Patel", "Vice President", "person4"),
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: "LeadershipCell", bundle: nil), forCellWithReuseIdentifier: "LeadershipCell")
        collectionView.dataSource = self
        collectionView.delegate = self
    }

 

}

extension LeadershipViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return leaders.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LeadershipCell", for: indexPath) as! LeadershipCell
        let data = leaders[indexPath.row]
        
             cell.configure(name: data.0,
                            role: data.1,
                            image: UIImage(named: data.2))
        return cell
    }
    func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                          sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          let padding: CGFloat = 16
          let spacing: CGFloat = 12
          
          let totalSpacing = padding + padding + spacing
          let width = (collectionView.frame.width - totalSpacing) / 2
          
          return CGSize(width: width, height: 220)
      }
      
    
      
      func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                          minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 12
      }
}
