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
    
    var messages = ["You Are Awesome!!", "You Are Great!", "You Are Da Bomb!", "You Are Fantastic!"]
    var messageCount = 0
    
    var imageCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // Recycle Through Messages
        if messageCount == messages.count {
            messageCount = 0
        }
        myMessage.text = messages[messageCount]
        messageCount += 1
        
        // Recycle Through Images
        if imageCount == 9 {
            imageCount = 1
        }
        imageView.image = UIImage(named: "image\(imageCount)")
        imageCount += 1
        
    
    }
    
}

