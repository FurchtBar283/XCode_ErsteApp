//
//  SliderViewController.swift
//  ErsteApp
//
//  Created by Michael Stroh on 28.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet weak var sliderTextfieldOutlet: UILabel!
    @IBOutlet weak var switchTextfieldOutlet: UILabel!
    @IBOutlet weak var switchTextfieldOutletTrue: UILabel!
    
    @IBAction func sliderChanged(sender: UISlider) {
        let sliderValue = sender.value
        //print(sliderValue)
        sliderTextfieldOutlet.text = NSString(format: "%.2f", sliderValue) as String
    }
    
    @IBAction func switchChanged(sender: UISwitch) {
        let switchValueAsString = BoolToString(sender.on)
        //print(switchValueAsString)
        if switchValueAsString == "true" {
            switchTextfieldOutletTrue.text = switchValueAsString
            switchTextfieldOutlet.text = ""
        } else {
            switchTextfieldOutlet.text = switchValueAsString
            switchTextfieldOutletTrue.text = ""
        }
    }
    
    func BoolToString(b: Bool)->String { return b.description ?? "<None>"}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
