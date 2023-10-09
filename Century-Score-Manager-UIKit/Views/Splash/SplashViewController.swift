//
//  SplashViewController.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import UIKit

class SplashViewController: UIViewController {

    // MARK: - Instance Properties
    
    // MARK: - Outlets

    @IBOutlet weak var splashView: SplashView!
    
    // MARK: - Overridden Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startSplashAnimation()
    }
    
    // MARK: - Instance Methods
    
    private func startSplashAnimation() {
        let scaleDownTransform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        splashView.contentView.setTransform(scaleDownTransform)
    
        splashView.contentView.animate(.spring(damping: 0.5), animations: {
            self.splashView.contentView.setTransform(CGAffineTransform.identity)
        }) { _ in
            self.navigateToNextController()
        }
    }
    
    func navigateToNextController() {
        // Navigate to another view controller
    }
}
