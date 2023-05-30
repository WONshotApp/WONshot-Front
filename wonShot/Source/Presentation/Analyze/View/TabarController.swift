//
//  TabarController.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/18.
//

import UIKit

class TabarController : UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        changeHeightOfTabbar()
        changeShadow()
        
        
    }
    func changeShadow() {
        //tabBar.shadowImage = UIImage()
        
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = .white
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.1
    }
    func changeHeightOfTabbar() {
        var tabFrame = tabBar.frame
        tabFrame.size.height = 90
        tabFrame.origin.y = view.frame.size.height - 90
        tabBar.frame = tabFrame
    }
}
