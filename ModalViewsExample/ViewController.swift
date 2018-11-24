//
//  ViewController.swift
//  ModalViewsExample
//
//  Created by R J Herrema on 24/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (UserDefaults.standard.string(forKey: "colour") != nil) {
            print("colour is not nil")
            let bgColour = UserDefaults.standard.string(forKey: "colour")
            switch bgColour {
            case "red":
                view.backgroundColor = UIColor.red
            case "blue":
                view.backgroundColor = UIColor.blue
            case "white":
                view.backgroundColor = UIColor.white
            default:
                view.backgroundColor = UIColor.white
            }
        }
    }
   
}

