//
//  UICollectionViewCell.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation
import UIKit

extension UICollectionViewCell {
        
    var reuseId: String {
        String(describing: self)
    }

}
