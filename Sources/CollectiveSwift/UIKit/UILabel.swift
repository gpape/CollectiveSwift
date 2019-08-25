//
//  UILabel.swift
//  
//
//  Created by Greg Pape on 8/19/19.
//

import UIKit

extension Collective where Element: UILabel {

    public var text: String? {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.text = newValue } }
    }

}
