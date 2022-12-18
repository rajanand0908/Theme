//
//  ViewContainer.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

/// A protocol that defines a view or a collection of views
/// The intent of this is to allow easy flattening of collections
/// that include both views and nested collections of views

protocol ViewContainer {
  
  var views: [UIView] { get }
  
}

extension Array where Element == ViewContainer {
  
  var views: [UIView] {
    flatMap { $0.views }
  }
  
}
