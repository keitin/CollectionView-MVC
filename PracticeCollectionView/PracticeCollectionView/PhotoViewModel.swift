//
//  PhotoViewModel.swift
//  PracticeCollectionView
//
//  Created by 松下慶大 on 2015/10/21.
//  Copyright © 2015年 matsushita keita. All rights reserved.
//

import UIKit

class PhotoViewModel: NSObject, UICollectionViewDataSource {
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCollectionViewCell", forIndexPath: indexPath)
        return cell
    }

}
