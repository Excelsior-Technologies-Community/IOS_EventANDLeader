//
//  LeadershipCell.swift
//  EventANDLeader
//
//  Created by Noman belim on 27/02/26.
//

import UIKit

class LeadershipCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
        @IBOutlet weak var profileImageView: UIImageView!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var roleLabel: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
            
            containerView.layer.cornerRadius = 12
            containerView.layer.shadowColor = UIColor.black.cgColor
            containerView.layer.shadowOpacity = 0.08
            containerView.layer.shadowOffset = CGSize(width: 0, height: 2)
            containerView.layer.shadowRadius = 6
            
            profileImageView.layer.cornerRadius = 45
            profileImageView.clipsToBounds = true
        }
        
        func configure(name: String, role: String, image: UIImage?) {
            nameLabel.text = name
            roleLabel.text = role
            profileImageView.image = image
        }
    }
