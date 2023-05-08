//
//  UINavigationControllerTransparent.swift
//  Instagram Clone
//
//  Created by Sorfian on 03/05/23.
//

import UIKit

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make the navigation bar transparent
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Rubik-Medium", size: 20)!,
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }
}

