//
//  FirstViewController.swift
//  uteroo_ios
//
//  Created by Paballo Moloi on 2020/01/11.
//  Copyright © 2020 Paballo Moloi. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionView: UICollectionView!
    var numberOfCells = 28
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CircleCell", for: indexPath)

        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: CircleLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}


