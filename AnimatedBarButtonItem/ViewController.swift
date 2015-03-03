//
//  ViewController.swift
//  AnimatedBarButtonItem
//
//  Created by Grzegorz Tatarzyn on 03/03/2015.
//  Copyright (c) 2015 Grzegorz Tatarzyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButton = RotatingBarButtonItem(image: UIImage(named: "arrow")!)
        self.navigationItem.setLeftBarButtonItem(barButton, animated: true)
    }
}

