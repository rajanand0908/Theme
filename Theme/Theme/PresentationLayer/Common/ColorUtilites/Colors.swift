//
//  Colors.swift
//  Theme
//
//  Created by Raj Anand on 19/12/22.
//

import UIKit

extension UIColor {
  
  private static let appBackgroundLightMode = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
  
  private static let appBackgroundDarkMode = UIColor(red: 0.078, green: 0.11, blue: 0.145, alpha: 1)
  
  static var appBackground: UIColor {
    return UIColor { traitCollection in
        if traitCollection.userInterfaceStyle == .dark {
            return .appBackgroundDarkMode
        }
        return .appBackgroundLightMode
    }
  }
  
  private static let appTextLightMode = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
  
  private static let appTextDarkMode = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
  
  static var appText: UIColor {
    return UIColor { traitCollection in
        if traitCollection.userInterfaceStyle == .dark {
            return .appTextDarkMode
        }
        return .appTextLightMode
    }
  }
}
