//
//  HomeView.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

final class HomeView: UIView {
  
  // MARK: - Lifecycle
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

private typealias SetupHelper = HomeView
private extension SetupHelper {
  
  func setupUI() {
    backgroundColor = .white
  }
  
}
