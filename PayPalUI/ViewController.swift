//
//  ViewController.swift
//  PayPalUI
//
//  Created by Misael Rivera on 9/29/19.
//  Copyright © 2019 Misael Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balanceView: UIView!
    @IBOutlet weak var moreSecurityView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViewUI()
        updateNavigationItems()
        
    }
    
    func updateViewUI() {
        let cornerRadius : CGFloat = 5.0
        let shadowOpacity : Float = 2.0
        
        balanceView.layer.cornerRadius = cornerRadius
        balanceView.layer.shadowOpacity = shadowOpacity
        balanceView.layer.shadowOffset = CGSize(width: 2, height: 1)
        balanceView.layer.shadowRadius = CGFloat(2)
        
        moreSecurityView.layer.cornerRadius = cornerRadius
    }
    
    func updateNavigationItems() {
        var rightBarItemImage = UIImage(named: "settingsicon")
            rightBarItemImage = rightBarItemImage?.withRenderingMode(.alwaysOriginal)
              
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightBarItemImage, style: .plain, target: nil, action: nil)
              
            let profileImageView = UIImageView(image: UIImage(named: "profileimage"))
            self.navigationItem.titleView = profileImageView
              
            var leftBarItemImage = UIImage(named: "notificationsicon")
            leftBarItemImage = leftBarItemImage?.withRenderingMode(.alwaysOriginal)
              
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftBarItemImage, style: .plain, target: nil, action: nil)
    }
}

