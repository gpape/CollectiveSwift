//
//  Math.swift
//  CollectiveSwiftExample
//
//  Created by Greg Pape on 8/25/19.
//  Copyright © 2019 Greg Pape. All rights reserved.
//

import UIKit

extension CGFloat {

    static func lerp(_ t: Float, from: CGFloat, to: CGFloat) -> CGFloat {
        return CGFloat(1 - t) * from + CGFloat(t) * to;
    }

    func lerp(_ t: Float, to other: CGFloat) -> CGFloat {
        return .lerp(t, from: self, to: other)
    }

}

extension UIColor {

    static func lerp(_ t: Float, from: UIColor, to: UIColor) -> UIColor {

        var r0, g0, b0, a0, r1, g1, b1, a1: CGFloat
        (r0, g0, b0, a0, r1, g1, b1, a1) = (0, 0, 0, 0, 0, 0, 0, 0)

        from.getRed(&r0, green: &g0, blue: &b0, alpha: &a0)
        to.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)

        let r = r0.lerp(t, to: r1)
        let g = g0.lerp(t, to: g1)
        let b = b0.lerp(t, to: b1)
        let a = a0.lerp(t, to: a1)
        return UIColor(displayP3Red: r, green: g, blue: b, alpha: a)

    }

    func lerp(t: Float, to other: UIColor) -> UIColor {
        return .lerp(t, from: self, to: other)
    }

}
