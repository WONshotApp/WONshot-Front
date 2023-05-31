//
//  TextFieldExtension.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/30.
//

import Foundation
import UIKit

extension UITextField {

    func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor(named: "green_main")?.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
