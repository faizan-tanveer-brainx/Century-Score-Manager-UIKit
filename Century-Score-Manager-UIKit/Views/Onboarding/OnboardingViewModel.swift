//
//  OnboardingViewModel.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation

class OnboardingViewModel {
    
    // MARK: - Instance Properties
    
    private let respository = OnboardingRepository()
    
    var data: [OnboardingModel] {
        respository.onboardings
    }
    
}
