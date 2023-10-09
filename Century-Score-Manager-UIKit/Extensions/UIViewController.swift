//
//  UIViewController.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var storyboardId: String {
        String(describing: self)
    }
   
    static func instantiate(from storyboard: UIStoryboard.Storyboard) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: storyboardId) as! Self
        
        return viewController
    }
}
