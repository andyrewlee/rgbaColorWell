//
//  ViewController.swift
//  RGBAcolor
//
//  Created by Jae Hoon Lee on 8/8/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var rgbColorWell: NSColorWell!
    
    @IBOutlet weak var redColorWell: NSColorWell!
    @IBOutlet weak var greenColorWell: NSColorWell!
    @IBOutlet weak var blueColorWell: NSColorWell!
    
    @IBOutlet weak var redSlider: NSSlider!
    @IBOutlet weak var greenSlider: NSSlider!
    @IBOutlet weak var blueSlider: NSSlider!
    
    @IBOutlet weak var codeTextField: NSTextField!
    
    @IBAction func sliderMoved(sender: NSSlider) {
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        let red = CGFloat(redSlider.floatValue/255)
        let green = CGFloat(greenSlider.floatValue/255)
        let blue = CGFloat(blueSlider.floatValue/255)
        
        redColorWell.color = NSColor(calibratedRed: red, green: 0, blue: 0, alpha: 1.0)
        greenColorWell.color = NSColor(calibratedRed: 0, green: green, blue: 0, alpha: 1.0)
        blueColorWell.color = NSColor(calibratedRed: 0, green: 0, blue: blue, alpha: 1.0)
        rgbColorWell.color = NSColor(calibratedRed: red, green: green, blue: blue, alpha: 1.0)
        
        codeTextField.stringValue = "NSColor(calibratedRed: \(red), green: \(green), blue: \(blue), alpha: 1.0)"
    }
}

