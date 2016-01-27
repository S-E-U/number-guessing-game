//
//  ViewController.swift
//  Number Guessing App
//
//  Created by Edouard Long on 27/01/2016.
//  Copyright © 2016 Edouard Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Setup the connnections to the labels and the textField
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var messageBok: UILabel!
    
    //Create a number for the user to guess
    let numberToGuess: Int = 10
    
    //Called when the user presses the button
    @IBAction func buttonPressed(sender: AnyObject) {
        //Check if the guess is right
        if userGuess.text == String(numberToGuess){
            messageBok.text = "You got the number"
            //Clear the text box
            userGuess.text = ""
        }
        else{
            messageBok.text = "Wrong number, try again!"
            //Clear the text box
            userGuess.text = ""
        }
    }
    
    //Called when the text bot is opened
    @IBAction func textBoxOpened(sender: AnyObject) {
        userGuess.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Put some text inside the welcomeLabel
        welcomeLabel.text = "Welcome to the number guessing game!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

