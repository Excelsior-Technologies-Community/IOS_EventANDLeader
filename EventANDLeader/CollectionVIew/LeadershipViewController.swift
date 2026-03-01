//
//  LeadershipViewController.swift
//  EventANDLeader
//
//  Created by Noman belim on 27/02/26.
//

import UIKit

class LeadershipViewController: UIViewController{
 
    @IBOutlet weak var CView: UIView!
    let leaders = [
        ("Dr. Devanshu Patel", "President", "ss1"),
        ("Dr. Parul Patel", "Vice President", "ss2"),
        ("Dr. Geetika Patel", "Vice President", "ss3"),
        ("Dr. Devanshu Patel", "President", "ss1"),
        ("Dr. Parul Patel", "Vice President", "ss2"),
        ("Dr. Geetika Patel", "Vice President", "ss3"),
        ("Dr. Devanshu Patel", "President", "ss1"),
        ("Dr. Parul Patel", "Vice President", "ss2"),
        ("Dr. Geetika Patel", "Vice President", "ss3"),
        ("Dr. Devanshu Patel", "President", "ss1"),
        ("Dr. Parul Patel", "Vice President", "ss2"),
        ("Dr. Geetika Patel", "Vice President", "ss3"),
        
      
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

         
//        view.backgroundColor = UIColor.systemGroupedBackground
        CView.backgroundColor = UIColor.systemGroupedBackground
        collectionView.backgroundColor = UIColor.systemGroupedBackground
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

        let interitemSpacing: CGFloat = 10   // ⬇️ reduced from 16
        let width = floor((collectionView.bounds.width - interitemSpacing) / 2)

        return CGSize(width: width, height: 220)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)  // ⬅️ remove left/right insets here
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10  // ✅ must match interitemSpacing above
    }
      
    
      
    
}
