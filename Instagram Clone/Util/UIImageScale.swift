//
//  UIImageScale.swift
//  Instagram Clone
//
//  Created by Sorfian on 05/05/23.
//

import UIKit

extension UIImage {
    func scale(newWidth: CGFloat) -> UIImage {
        // Make sure the given width is different from the existing one
        if self.size.width == newWidth {
            return self
        }
        // Calculate the scaling factor
        let scaleFactor = newWidth / self.size.width
        let newHeight = self.size.height * scaleFactor
        let newSize = CGSize(width: newWidth, height: newHeight)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0); self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage ?? self
    }
}
