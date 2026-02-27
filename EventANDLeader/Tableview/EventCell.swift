//
//  EventCell.swift
//  EventANDLeader
//
//  Created by Noman belim on 27/02/26.
//

import UIKit
class EventCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var mainStackView: UIStackView!
    
    @IBOutlet weak var eventImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var infoStackView: UIStackView!
    @IBOutlet weak var dateContainerView: UIView!
    @IBOutlet weak var timeContainerView: UIView!
    
    @IBOutlet weak var registerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        
        // Card style
        containerView.layer.cornerRadius = 12
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.08
        containerView.layer.shadowOffset = CGSize(width: 0, height: 2)
        containerView.layer.shadowRadius = 6
        containerView.layer.masksToBounds = false
        
        // Image corner
        eventImageView.clipsToBounds = true
//        eventImageView.layer.cornerRadius = 10
        
        // Register label styling
        registerLabel.backgroundColor = UIColor.systemGray6
        registerLabel.layer.cornerRadius = 6
        registerLabel.clipsToBounds = true
        registerLabel.textAlignment = .center
    }
}
