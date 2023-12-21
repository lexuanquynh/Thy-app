//
//  UIView+Ex.swift
//  ThyApp
//
//  Created by Le Xuan Quynh on 21/12/2023.
//

import UIKit

@IBDesignable
class RoundedCornerView: UIView {

    @IBInspectable
    var cornerRadius: CGFloat {
        set { layer.cornerRadius = newValue }
        get { return layer.cornerRadius     }
    }
}
