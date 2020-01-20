//
//  ViewController.swift
//  SnowCalls
//
//  Created by Hartley, Keira on 2019-11-28.
//  Copyright © 2019 Hartley, Keira. All rights reserved.
//

import UIKit


// UITextViewDelegate - just means that we promise to impliment certain methods on this class, or, also can mean some functionality is now made available to us
class ViewController: UIViewController, UITextViewDelegate {
    
    //MARK: Properties
    
    
    @IBOutlet weak var inputText: UITextView!
    @IBOutlet weak var textOutput: UITextView!
    
    
    //MARK: Methods
    
    
    // This method runs ONCE after the view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make this class be the delegate for the input text view
        inputText.delegate = self
        
        // Give the focus to the input textview when the program begins
        inputText.becomeFirstResponder()
        
    }
    
    @IBAction func convert(_ sender: Any) {
        textOutput.text = ""
        
        //Guard against no input
        guard let textInput = inputText.text, textInput.count != 0 else {
            textOutput.text = "Please enter phone numbers to convert."
            return }
        //Split the input code into each line
        let pieces = textInput.split(separator: "\n")
        
        
        for piece in pieces {
            var convertedNumber = ""
            
            for character in piece {
                
                //If the phone number is less than 10 characters, keep doing the loop
                if convertedNumber.count < 12 {
                    if convertedNumber.count == 3 || convertedNumber.count == 7{
                        convertedNumber += "-"
                    }
                    
                    //Convert the letters into numbers for the phone number
                    switch character {
                    case "0":
                        convertedNumber += "0"
                    case "1":
                        convertedNumber += "1"
                    case "2", "a", "b", "c", "A", "B", "C":
                        convertedNumber += "2"
                    case "3", "d", "e", "f", "D", "E", "F":
                        convertedNumber += "3"
                    case "4", "g", "h", "i", "G", "H", "I":
                        convertedNumber += "4"
                    case "5", "j", "k", "l", "J", "K", "L":
                        convertedNumber += "5"
                    case "6", "m", "n", "o", "M", "N", "O":
                        convertedNumber += "6"
                    case "7", "p", "q", "r", "s", "P", "Q", "R", "S":
                        convertedNumber += "7"
                    case "8", "t", "u", "v", "T", "U", "V":
                        convertedNumber += "8"
                    case "9", "w", "x", "y", "z", "W", "X", "Y", "Z":
                        convertedNumber += "9"
                    default:
                        convertedNumber += ""
                    }
                }
            }
            
            //convertedNumber.insert("-", at: 3)
            
            // Puts the converted phone number into the output box for the user
            textOutput.text += convertedNumber + "\n"
            
            
        }
        
        
        
    }
    
    // MARK: UITextViewDelegate Methods
    
    // Called automatically when the context of the text view are changed
    func textViewDidChange(_ textView: UITextView) {
        
        //Reset the output view
        textOutput.text = ""
    }
    
}
