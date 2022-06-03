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
        let awesomeMessage = "You are Awesome!"
        let greatMessage = "You are Great!"
        let bombMessage = "You Are Da Bomb"
        
        if myMessage.text == awesomeMessage{
            myMessage.text = greatMessage
            imageView.image = UIImage(named: "image1")
            
        } else if myMessage.text == greatMessage {
            myMessage.text = bombMessage
            imageView.image = UIImage(named: "image2")
            
        }
            else {
                myMessage.text = awesomeMessage
                imageView.image = UIImage(named: "image0")
            }
    }
    
}

