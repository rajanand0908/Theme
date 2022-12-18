//
//  CustomViewController.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

class CustomViewController<View: UIView>: ViewController {
  
  // MARK: - Properties
  
  var customView: View {
    view as! View
  }
  
  // MARK: - Lifecycle
  
  override init() {
    super.init()
  }
  
  override func loadView() {
    view = buildView(frame: UIScreen.main.bounds)
  }
  
  func buildView(frame: CGRect) -> View {
    return View(frame: frame)
  }
  
}
