//
//  ViewController.swift
//  Color Palette
//
//  Created by Marc Martí Prades on 17/5/17.
//  Copyright © 2017 MMartíDeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var palette: UIView!

    var currentRed: Float = 0.5
    var currentGreen: Float = 0.5
    var currentBlue: Float = 0.5
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        switch(sender.restorationIdentifier!){
            case "redSlider":
                currentRed = sender.value
            case "greenSlider":
                currentGreen = sender.value
            case "blueSlider":
                currentBlue = sender.value
            default:
                break
        }
        palette.backgroundColor = UIColor(colorLiteralRed: currentRed, green: currentGreen, blue: currentBlue, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

