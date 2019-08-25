//
//  CALayer.swift
//  
//
//  Created by Greg Pape on 8/18/19.
//

import QuartzCore

extension Collective where Element: CALayer {

    public var borderColor: CGColor? {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.borderColor = newValue } }
    }

    public var borderWidth: CGFloat {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.borderWidth = newValue } }
    }

    public var opacity: Float {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.opacity = newValue } }
    }

    public var transform: CATransform3D {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.transform = newValue } }
    }

}
