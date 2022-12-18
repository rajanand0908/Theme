//
//  Fonts.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

// MARK: - Fonts

enum FontFamily {
  
  enum SFPro {
    static let heavy = FontConvertible(name: "SFPro-Heavy", family: "SF Pro")
    static let bold = FontConvertible(name: "SFPro-Bold", family: "SF Pro")
    static let light = FontConvertible(name: "SFPro-Light", family: "SF Pro")
  }
  
}

// MARK: - Implementation Details

struct FontConvertible {
  
  let name: String
  let family: String
  
  func font(size: CGFloat) -> UIFont {
    UIFont(font: self, size: size)
  }
}

extension UIFont {
  
  convenience init!(font: FontConvertible, size: CGFloat) {
    self.init(name: font.name, size: size)
  }
  
}
