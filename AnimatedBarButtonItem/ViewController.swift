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
        let barButton = UIBarButtonItem(title: "BTN", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.setLeftBarButtonItem(barButton, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

