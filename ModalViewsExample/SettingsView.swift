//
//  SettingsView.swift
//  ModalViewsExample
//
//  Created by R J Herrema on 24/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

class SettingsView: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colourState.selectedSegmentIndex = UISegmentedControl.noSegment
        
    }
    
    
    
    @IBOutlet weak var colourState: UISegmentedControl!
    
    @IBAction func chooseColour(_ sender: UISegmentedControl) {

        switch sender.selectedSegmentIndex {
        case 0:
            UserDefaults.standard.set("red", forKey: "colour")
        case 1:
            UserDefaults.standard.set("blue", forKey: "colour")
        case 2:
            UserDefaults.standard.set("white", forKey: "colour")
        default:
            print("no colour chosen")
        }
    }
    
    @IBAction func dismissSelf(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
