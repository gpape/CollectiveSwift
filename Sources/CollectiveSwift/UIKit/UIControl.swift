//
//  UIControl.swift
//  
//
//  Created by Greg Pape on 8/19/19.
//

import UIKit

extension Collective where Element: UIControl {

    public var isEnabled: Bool {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.isEnabled = newValue } }
    }

}
