//
//  UICollectionView.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func dequeue<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        
       let cellIdentifier = String(describing: T.self)
       let cell = dequeueReusableCell(
        withReuseIdentifier: cellIdentifier,
        for: indexPath
       ) as! T
        
        return cell
    }
    
}
