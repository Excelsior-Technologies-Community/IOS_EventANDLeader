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

        let totalWidth = collectionView.bounds.width
        let interitemSpacing: CGFloat = totalWidth * 0.04
        let width = floor((totalWidth - interitemSpacing) / 2)
        let height = width * 1.35

        return CGSize(width: width, height: height)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = collectionView.bounds.width * 0.04
        return UIEdgeInsets(top: inset, left: 0, bottom: inset, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return collectionView.bounds.width * 0.04  // ✅ must match interitemSpacing above
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return collectionView.bounds.width * 0.04  // vertical gap between rows
    }
    
}
