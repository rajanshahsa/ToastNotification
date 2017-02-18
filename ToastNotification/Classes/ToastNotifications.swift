//
//  ToastNotification.swift
//  ToastNotification
//
//  Created by rajan.shah on 16/02/17.
//  Copyright © 2017 Solution Analysts. All rights reserved.
//

import UIKit
import ObjectiveC

public extension UIView {
    
    public func makeToast(_ message : String) {
        let screenWidth = Float(UIScreen.main.bounds.size.width)
        let screenHeight = Float(UIScreen.main.bounds.size.height)
        let baseWidth = screenWidth - 100
        let lblToast = UILabel.init(frame: CGRect(x: Int((screenWidth / 2) - (100 / 2)), y: 70, width: 100, height: 20))
        lblToast.text = message
        lblToast.sizeToFit()
        lblToast.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        lblToast.font = UIFont.systemFont(ofSize: 12.0)
        lblToast.textColor = UIColor.white
        lblToast.textAlignment = .center
        lblToast.clipsToBounds = true
        let smallWidth = lblToast.frame.size.width > CGFloat(baseWidth)
        var numberOfLine = 1
        var lablewidth = lblToast.frame.size.width
        if smallWidth {
            numberOfLine = Int(ceil(((CGFloat(lblToast.frame.size.width) / CGFloat(baseWidth)))))
            lablewidth = CGFloat(baseWidth)
        }
        numberOfLine = numberOfLine > 3 ? 3 : numberOfLine
        lblToast.numberOfLines = Int(numberOfLine)
        lblToast.frame = CGRect(x: CGFloat((screenWidth / 2)) - (CGFloat(baseWidth) / 2), y: 0 - CGFloat(screenHeight), width: CGFloat(lablewidth), height: (lblToast.frame.size.height * CGFloat(numberOfLine)))
        lblToast.layer.cornerRadius = 6.0
        self.addSubview(lblToast)
        self.bringSubview(toFront: lblToast)
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            lblToast.frame = CGRect(x: CGFloat(screenWidth / 2) - CGFloat(lblToast.frame.size.width / 2), y: 80, width: lblToast.frame.size.width, height: lblToast.frame.size.height)
        }) { (isFinishes) in
            UIView.animate(withDuration: 0.5, delay: 1.5, options: UIViewAnimationOptions.curveEaseInOut, animations: {
                lblToast.alpha = 0.0
            }, completion: { (isFinished) in
                lblToast.removeFromSuperview()
            })
        }
        
    }
    
}
