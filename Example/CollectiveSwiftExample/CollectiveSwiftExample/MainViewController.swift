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

// MARK: - Interface

    @IBOutlet private var effectViews: [UIView]!
    @IBOutlet private weak var slider: UISlider!

}

// MARK: - : UIViewController

extension MainViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValueChanged(slider)
    }

}

// MARK: - Actions

private extension MainViewController {

    @IBAction func sliderValueChanged(_ slider: UISlider) {
        effectViews.all.backgroundColor = UIColor.blue.lerp(t: slider.value, to: .red)
        effectViews.all.transform = CGAffineTransform(rotationAngle: CGFloat(0).lerp(slider.value, to: .pi / 2))
    }

}
