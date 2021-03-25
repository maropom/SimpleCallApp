//
//  PositiveSimpleButton.swift .swift
//  SimpleCallApp
//
//  Created by Mika Miyakawa on 2021/03/25.
//

import Foundation
import UIKit

@IBDesignable
class PositiveSimpleButton: UIButton {
override init(frame: CGRect) {
    super.init(frame: frame)
    customDesign()
  }
required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customDesign()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    customDesign()
  }
  
  private func customDesign() {
    backgroundColor = UIColor(displayP3Red: 79/255, green: 172/255,     blue: 254/255,alpha: 1.0)
    setTitleColor(.white, for: .normal)
    titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
    contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
    layer.cornerRadius = 15.0
  }
}
