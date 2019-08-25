//
//  UIView.swift
//  
//
//  Created by Greg Pape on 8/18/19.
//

import UIKit

extension Collective where Element: UIView {

    public var alpha: CGFloat {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.alpha = newValue } }
    }

    public var backgroundColor: UIColor? {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.backgroundColor = newValue } }
    }

    public var isHidden: Bool {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.isHidden = newValue } }
    }

    public var tintColor: UIColor {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.tintColor = newValue } }
    }

    public var transform: CGAffineTransform {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.transform = newValue } }
    }

    @available(iOS 12.0, *)
    public var transform3D: CATransform3D {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.transform3D = newValue } }
    }

}
