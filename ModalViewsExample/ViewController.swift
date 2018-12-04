//
//  ViewController.swift
//  ModalViewsExample
//
//  Created by R J Herrema on 24/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animals: [String] = [String]()
    var animalString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadDefaults()
    }
    
    
    func loadDefaults()  {
        // background color
        if (UserDefaults.standard.string(forKey: "colour") != nil) {
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
        // animals list
        if UserDefaults.standard.array(forKey: "animals") != nil {
            animals = UserDefaults.standard.array(forKey: "animals") as! [String]
            animalString = ""
            for index in 0..<animals.count {
                animalString = animalString + " " + animals[index]
            }
            animalsText.text = animalString
        } else {
            animals = ["cat", "dog", "horse"]
            animalString = ""
            for index in 0..<animals.count {
                animalString = animalString + " " + animals[index]
            }
            animalsText.text = animalString
        }
    }
    
    @IBOutlet weak var animalsText: UITextView!
    
    @IBAction func addAnimal(_ sender: UIButton) {
        let newAnimals = ["pig", "cow", "sheep", "badger", "hedgehog", "emu", "camel", "fox"]
        let randInt = Int(arc4random_uniform(UInt32(newAnimals.count)))
        animals.append(newAnimals[randInt])
        animalString = ""
        for index in 0..<animals.count {
            animalString = animalString + " " + animals[index]
        }
        UserDefaults.standard.set(animals, forKey: "animals")
        animalsText.text = animalString
    }
    
    @IBAction func clearAnimals(_ sender: UIButton) {
        animals = []
        UserDefaults.standard.set(animals, forKey: "animals")
        animalString = ""
        animalsText.text = animalString
    }
    
    
}

