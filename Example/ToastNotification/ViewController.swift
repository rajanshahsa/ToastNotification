//
//  ViewController.swift
//  ToastNotification
//
//  Created by rajanshahsa on 02/17/2017.
//  Copyright (c) 2017 rajanshahsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.makeToast("Hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

