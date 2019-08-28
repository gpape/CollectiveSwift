//
//  MainViewController.swift
//  CollectiveSwiftExample
//
//  Created by Greg Pape on 8/25/19.
//  Copyright © 2019 Greg Pape. All rights reserved.
//

import CollectiveSwift
import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private var effectViews: [UIView]!
    @IBOutlet private var labels: [UILabel]!
    @IBOutlet private weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValueChanged(slider)
    }

    @IBAction private func sliderValueChanged(_ slider: UISlider) {
        effectViews.all.backgroundColor = .lerp(slider.value, from: .blue, to: .red)
        effectViews.all.transform = CGAffineTransform(rotationAngle: .lerp(slider.value, from: 0, to: .pi / 2))
        labels.all.text = String(slider.value)
    }

}
