//
//  OnboardingRepository.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import Foundation

class OnboardingRepository {
    
    // MARK: - Instance Properties
    
    var onboardings = [OnboardingModel]()
    
    // MARK: - Instance Methods
    
    init() {
        initializeOnboardings()
    }
    
    // MARK: - Private Methods
    
    private func initializeOnboardings() {
        for index in 0..<3 {
            let onboarding = OnboardingModel(
                imageName: "image#\(index+1)",
                title: "title#\(index+1)",
                description: "description#\(index+1)"
            )
            onboardings.append(onboarding)
        }
    }
}
