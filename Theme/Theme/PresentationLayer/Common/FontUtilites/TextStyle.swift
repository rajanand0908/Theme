//
//  TextStyle.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

enum TextStyle: String {
  case title
  case secondaryTitle
  case bodyTitle
  case body
  case bodySecondary
  case input
  case button
  case detail
  case detailSecondary
  case caption
  
  private var details: Details {
    switch self {
    case .title:
      return .title
    case .secondaryTitle:
      return .titleSecondary
    case .bodyTitle:
      return .bodyTitle
    case .body:
      return .body
    case .bodySecondary:
      return .bodySecondary
    case .input:
      return .input
    case .button:
      return .body
    case .detail:
      return .detail
    case .detailSecondary:
      return .detailSecondary
    case .caption:
      return .caption
    }
  }
  
  var font: UIFont {
    return UIFont(descriptor: details.fontDescriptor, size: details.size)
  }
  
  private class Details {
    
    static let title = Details(
      fontConvertible: FontFamily.SFPro.heavy,
      size: 24
    )
    
    static let titleSecondary = Details(
      fontConvertible: FontFamily.SFPro.light,
      size: 24
    )
    
    static let bodyTitle = Details(
      fontConvertible: FontFamily.SFPro.bold,
      size: 16
    )
    
    static let body = Details(
      fontConvertible: FontFamily.SFPro.light,
      size: 16
    )
    
    static let bodySecondary = Details(
      fontConvertible: FontFamily.SFPro.light,
      size: 14
    )
    
    static let input = Details(
      fontConvertible: FontFamily.SFPro.bold,
      size: 14
    )
    
    static let button = Details(
      fontConvertible: FontFamily.SFPro.heavy,
      size: 14
    )
    
    static let detail = Details(
      fontConvertible: FontFamily.SFPro.bold,
      size: 12
    )
    
    static let detailSecondary = Details(
      fontConvertible: FontFamily.SFPro.light,
      size: 12
    )
    
    static let caption = Details(
      fontConvertible: FontFamily.SFPro.bold,
      size: 12
    )
    
    let fontConvertible: FontConvertible
    let size: CGFloat
    
    lazy var fontDescriptor: UIFontDescriptor = {
      return fontConvertible.font(size: size).fontDescriptor
    }()
    
    init(fontConvertible: FontConvertible,
         size: CGFloat) {
      self.fontConvertible = fontConvertible
      self.size = size
    }
  }
  
}
