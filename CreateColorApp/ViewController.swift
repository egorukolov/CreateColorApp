//
//  ViewController.swift
//  CreateColorApp
//
//  Created by Egor Ukolov on 22.05.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var multiColorView: UIView!
    
    @IBOutlet var redSliderVulue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        multiColorView.layer.cornerRadius = 10
    }
    
    @IBAction func redSlidersValues() {
        redSliderVulue.text = String(format: "%.2f", (redSlider.value))
    }
    @IBAction func greenSlidersValues() {
        greenSliderValue.text = String(format: "%.2f", (greenSlider.value))
    }
    
    @IBAction func blueSlidersValues() {
        blueSliderValue.text = String(format: "%.2f", (blueSlider.value))
    }
    
    func changeColor() {
        multiColorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbChangeSlider() {
        changeColor()
    }
}

