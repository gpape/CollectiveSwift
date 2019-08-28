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

}

extension UIColor {

    static func lerp(_ t: Float, from: UIColor, to: UIColor) -> UIColor {

        var r0, g0, b0, a0, r1, g1, b1, a1: CGFloat
        (r0, g0, b0, a0, r1, g1, b1, a1) = (0, 0, 0, 0, 0, 0, 0, 0)

        from.getRed(&r0, green: &g0, blue: &b0, alpha: &a0)
        to.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)

        let r: CGFloat = .lerp(t, from: r0, to: r1)
        let g: CGFloat = .lerp(t, from: g0, to: g1)
        let b: CGFloat = .lerp(t, from: b0, to: b1)
        let a: CGFloat = .lerp(t, from: a0, to: a1)
        return UIColor(displayP3Red: r, green: g, blue: b, alpha: a)

    }

}
