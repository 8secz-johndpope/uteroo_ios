//
//  CircleCollectionViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/25.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class CircleCollectionViewController: UICollectionViewController {
    
    var numberOfCells = 28
    var dashCollectionView = UICollectionView()
    
    init(view: UICollectionView) {
        dashCollectionView = view
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = dashCollectionView
        collectionView?.collectionViewLayout = CircleLayout()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animateAlongsideTransition(in: view, animation: { _ in
            self.collectionView?.performBatchUpdates(nil)
        })
    }

}

// MARK: UICollectionViewDataSource

extension CircleCollectionViewController {
   override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CircleCell", for: indexPath)
        return cell
    }
}
