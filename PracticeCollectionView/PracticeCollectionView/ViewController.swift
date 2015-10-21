//
//  ViewController.swift
//  PracticeCollectionView
//
//  Created by 松下慶大 on 2015/10/21.
//  Copyright © 2015年 matsushita keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {

    let photoViewModel = PhotoViewModel()
    
    override func loadView() {
        self.view = CustomView(model: photoViewModel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let customView = self.view as! CustomView
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = photoViewModel        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

