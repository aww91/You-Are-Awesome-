//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anthony Whitfield on 4/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" viewDidLoad has run!")
        myMessage.text = ""
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("The message button was pressed")
        myMessage.text = "You Are Awesome!"
    }
    
}

