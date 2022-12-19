//
//  HomeView.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

final class HomeView: UIView {
  
  // MARK: - Properties
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.title.font
    label.textColor = .appText
    label.text = "Title"
    return label
  }()
  
  let secondaryTitleLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.secondaryTitle.font
    label.textColor = .appText
    label.text = "Title Secondary"
    return label
  }()
  
  let bodyTitleLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.bodyTitle.font
    label.textColor = .appText
    label.text = "Body Title"
    return label
  }()
  
  let bodyLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.body.font
    label.textColor = .appText
    label.text = "Body"
    return label
  }()
  
  let bodySecondaryLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.bodySecondary.font
    label.textColor = .appText
    label.text = "Body Secondary"
    return label
  }()
  
  let inputLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.input.font
    label.textColor = .appText
    label.text = "Input"
    return label
  }()
  
  let buttonLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.button.font
    label.textColor = .appText
    label.text = "Button"
    return label
  }()
  
  let detailLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.detail.font
    label.textColor = .appText
    label.text = "Detail"
    return label
  }()
  
  let detailSecondaryLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.detailSecondary.font
    label.textColor = .appText
    label.text = "Detail Secondary"
    return label
  }()
  
  let captionLabel: UILabel = {
    let label = UILabel()
    label.font = TextStyle.caption.font
    label.textColor = .appText
    label.text = "Caption"
    return label
  }()
  
  private let stackView: UIStackView = {
    let stack = UIStackView()
    stack.axis = .vertical
    stack.spacing = 15
    return stack
  }()
  
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
    backgroundColor = .appBackground
    
    stackView.addArrangedSubviews(
      titleLabel, secondaryTitleLabel, bodyTitleLabel, bodyLabel, bodySecondaryLabel, inputLabel, detailLabel, detailSecondaryLabel, captionLabel)
    addSubViewForAutoLayout(stackView)
    
    NSLayoutConstraint.activate([
      stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
  }
  
}
