//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Michael Renninger on 11/18/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(mensShoeSizeTextField.text.toInt()! + conversionConstant) in European Shoe Size"
    }

    @IBAction func converWomensShoeSizeButtonPressed(sender: UIButton) {
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(Double((womensShoeSizeTextField.text as NSString).doubleValue) + conversionConstant) in European Shoe Size"
    }
}

