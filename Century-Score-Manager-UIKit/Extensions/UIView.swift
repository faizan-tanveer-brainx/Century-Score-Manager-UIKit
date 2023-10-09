//
//  UIView.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation
import UIKit

extension UIView {
    
    enum AnimationType {
        case spring(damping: CGFloat)
    }
    
    func animate(_ type: AnimationType, animations: @escaping () -> Void, completion: @escaping (Bool) -> Void) {
        switch type {
            case .spring(let damping):
                UIView.animate(
                    withDuration: 4,
                    delay: 0.5,
                    usingSpringWithDamping: damping,
                    initialSpringVelocity: 0,
                    animations: animations,
                    completion: completion
                )
        }
    }
    
    func setTransform(_ transform: CGAffineTransform) {
        self.transform = transform
    }
}
