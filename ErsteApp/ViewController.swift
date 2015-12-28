//
//  ViewController.swift
//  ErsteApp
//
//  Created by Michael Stroh on 04.12.15.
//  Copyright © 2015 Michael Stroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var namensListe = [String: [String: String]]()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var alterLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var nameSegment: UISegmentedControl!

    @IBAction func nameTapped(sender: AnyObject) {
        let name = sender as! UIButton
        self.setzeWerte(name.currentTitle!)
        if name.currentTitle == "Pierce" {
            nameSegment.selectedSegmentIndex = 0
        } else if name.currentTitle == "Jürgen" {
            nameSegment.selectedSegmentIndex = 1
        } else {
            nameSegment.selectedSegmentIndex = 2
        }
    }
    
    @IBAction func nameSegmentTapped(sender: AnyObject) {
        switch(sender.selectedSegmentIndex){
            case 0:
                self.setzeWerte("Pierce")
            case 1:
                self.setzeWerte("Jürgen")
            case 2:
                self.setzeWerte("Hans")
            default:
                print("Fehler beim Auswählen eines Segments")
        }
    }
    
    // Funktion setzt den entsprechenden Mitarbeiter durch Dictionary-Aufruf
    func setzeWerte(name: String) {
        let person = namensListe[name]!
  
        nameLabel.text = person["name"]
        alterLabel.text = person["alter"]
        positionLabel.text = person["position"]

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToSlider" {
            let destinationController = segue.destinationViewController as! SliderViewController
            destinationController.InfoFirstView = nameLabel.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Dictionary für die jeweiligen Mitarbeiter
        namensListe = [
            "Pierce": [
                "name": "Pierce Brosnan",
                "alter": "48",
                "position": "Geheimagent"
            ],
            "Jürgen": [
                "name": "Jürgen Klopp",
                "alter": "45",
                "position": "Jürgen Klopp"
            ],
            "Hans": [
                "name": "Hans Wurst",
                "alter": "10",
                "position": "Praktikant"
            ]
        ]
        
        // Startwert auf Mitarbeiter "Jürgen" setzen
        self.setzeWerte("Jürgen")
        // Ausgewähltes Segment auf Element 2 "Jürgen" setzen
        nameSegment.selectedSegmentIndex = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

