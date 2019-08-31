//
//  Math.swift
//
//  Copyright (c) 2019 Greg Pape (http://www.gpape.com/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
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
