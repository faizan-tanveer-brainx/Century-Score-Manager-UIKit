//
//  OnboardingViewController.swift
//  Century-Score-Manager-UIKit
//
//  Created by BrainX Technologies 11 on 09/10/2023.
//

import UIKit

class OnboardingViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var onboardingView: OnboardingView!
    
    // MARK: - Instance Methods
    
    let viewModel = OnboardingViewModel()
    
    // MARK: - Action Methods

    @IBAction
    func onSkipButtonTap(_ sender: UIButton) {
        
    }
    
    @IBAction
    func onNextButtonTap(_ sender: UIButton) {
        
    }
    
    @IBAction
    func pageChanged(_ sender: UIPageControl) {
        let pageNo = sender.currentPage
        
        onboardingView.collectionView.scrollToItem(at: IndexPath(item: pageNo, section: 0), at: .centeredHorizontally, animated: true)
    }
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setCollectionView()
    }
    private func setCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width: onboardingView.collectionView.frame.width, height: onboardingView.collectionView.frame.height)
        onboardingView.collectionView.contentInset = .zero
        onboardingView.collectionView.backgroundColor = .clear
        onboardingView.collectionView.collectionViewLayout = layout
      }
}

extension OnboardingViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: onboardingView.collectionView.frame.width, height: onboardingView.collectionView.frame.height)
    }

}

// MARK: - UICollectionViewDataSource Methods
extension OnboardingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: OnboardingCollectionViewCell = collectionView.dequeue(for: indexPath)
        
        let data = viewModel.data[indexPath.item]
        cell.setData(data)
        
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout Methods
extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        onboardingView.pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
}
