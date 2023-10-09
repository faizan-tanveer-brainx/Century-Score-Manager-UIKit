//
//  OnboardingCollectionViewCell.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var screenTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Instance Methods
    
    func setData(_ data: OnboardingModel) {
        if let image = UIImage(named: "splash-icon") {
            imageView.image = image
        }
        screenTitleLabel.text = data.title
        descriptionLabel.text = data.description
    }
    
}
