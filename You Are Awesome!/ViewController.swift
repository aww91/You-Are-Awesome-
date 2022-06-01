//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anthony Whitfield on 4/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myMessage: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        if myMessage.text == "You Are Awesome!" {
            myMessage.text = "You Are Great!"
            imageView.image = UIImage(named: "image1")
        } else {
            myMessage.text = "You Are Awesome!"
            imageView.image = UIImage(named: "image0")
        }
    }
    
}

