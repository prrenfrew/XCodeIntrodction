//
//  ViewController.swift
//  XCodeIntroduction
//
//  Created by MAC on 8/21/20.
//  Copyright © 2020 PaulRenfrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  fileprivate func addAndConstraintRedView() {
    let redView = UIView()
    redView.backgroundColor = .red
    self.view.addSubview(redView)
    redView.translatesAutoresizingMaskIntoConstraints = false
    redView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
    redView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    redView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
    redView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
  }
  
  func addAndConstrainBlueView() {
    let blueView = UIView()
    blueView.backgroundColor = .blue
    self.view.addSubview(blueView)
    blueView.translatesAutoresizingMaskIntoConstraints = false
//    blueView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
//    blueView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//    blueView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//    blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
//    Constraints are like math equations of the form y = mx + b
    let constraints = [
      NSLayoutConstraint(item: blueView,
                         attribute: .top,
                         relatedBy: .equal,
                         toItem: self.view.safeAreaLayoutGuide,
                         attribute: .top,
                         multiplier: 1,
                         constant: 0),
      NSLayoutConstraint(item: blueView,
                         attribute: .bottom,
                         relatedBy: .equal,
                         toItem: self.view.safeAreaLayoutGuide,
                         attribute: .bottom,
                         multiplier: 1,
                         constant: 0),
      NSLayoutConstraint(item: blueView,
                         attribute: .trailing,
                         relatedBy: .equal,
                         toItem: self.view.safeAreaLayoutGuide,
                         attribute: .trailing,
                         multiplier: 1,
                         constant: 0),
      NSLayoutConstraint(item: blueView,
                         attribute: .width,
                         relatedBy: .equal,
                         toItem: self.view.safeAreaLayoutGuide,
                         attribute: .width,
                         multiplier: 0.5,
                         constant: 0)
    ]
    NSLayoutConstraint.activate(constraints)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.addAndConstraintRedView()
    self.addAndConstrainBlueView()
  }
}
