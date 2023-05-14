//
//  buttoncircle.swift
//  calc
//
//  Created by 김정현 on 2023/05/13.
//

import Foundation
import UIKit

@IBDesignable   //인터페이스 빌더에서 확인하게끔
class CircleButton: UIButton {
    
    @IBInspectable var cornerradius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerradius
            layer.masksToBounds = cornerradius > 0
        }
    }
    
}
