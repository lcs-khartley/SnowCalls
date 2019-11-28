//
//  ViewController.swift
//  SnowCalls
//
//  Created by Hartley, Keira on 2019-11-28.
//  Copyright © 2019 Hartley, Keira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    
    @IBOutlet weak var inputText: UITextView!
    @IBOutlet weak var textOutput: UITextView!
    
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: Any) {
        
        guard let textInput = inputText.text, textInput.count != 0 else {
            textOutput.text = "Please enter phone numbers to convert."
            return }
        
        let pieces = textInput.split(separator: "\n")
        
        for piece in pieces {
            var convertedNumber = ""
            for character in piece {
                switch character {
                case "0":
                    convertedNumber = "0"
                case "1":
                    convertedNumber = "1"
                case "2", "a", "b", "c", "A", "B", "C":
                    convertedNumber = "2"
                case "3", "d", "e", "f", "D", "E", "F":
                    convertedNumber = "3"
                case "4", "g", "h", "i", "G", "H", "I":
                    convertedNumber = "4"
                case "5", "j", "k", "l", "J", "K", "L":
                    convertedNumber = "5"
                case "6", "m", "n", "o", "M", "N", "O":
                    convertedNumber = "6"
                case "7", "p", "q", "r", "s", "P", "Q", "R", "S":
                    convertedNumber = "7"
                case "8", "t", "u", "v", "T", "U", "V":
                    convertedNumber = "8"
                case "9", "w", "x", "y", "z", "W", "X", "Y", "Z":
                    convertedNumber = "9"
                default:
                    convertedNumber = ""
                }
                 textOutput.text += convertedNumber
            }
           
        }
        
        
        
    }
    
}
