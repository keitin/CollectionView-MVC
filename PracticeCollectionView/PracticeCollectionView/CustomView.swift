//
//  CustomView.swift
//  PracticeCollectionView
//
//  Created by 松下慶大 on 2015/10/21.
//  Copyright © 2015年 matsushita keita. All rights reserved.
//

import UIKit

class CustomView: UIView {

    var collectionView: UICollectionView
    var floawLayout = UICollectionViewFlowLayout()
    
    required init(model: PhotoViewModel) {
        collectionView = UICollectionView(frame: CGRectZero, collectionViewLayout: floawLayout)
        collectionView.registerNib(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PhotoCollectionViewCell")
        collectionView.backgroundColor = UIColor.whiteColor()
        super.init(frame: CGRectZero)
        self.addSubview(collectionView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = self.frame
        setCollectionViewLayout()
    }
    
    func setCollectionViewLayout() {
        floawLayout.itemSize = CGSizeMake(100, 100)
        floawLayout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16)
        floawLayout.headerReferenceSize = CGSizeMake(100,30)
    }
}
