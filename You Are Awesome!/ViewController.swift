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
    
    var messages = ["You Are Awesome!!", "You Are Great!", "You Are Da Bomb!", "You Are Fantastic!", "You've Got The Design Skills of Jony Ive"]
    var messageCount = 0
    
    var imageCount = 1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        myMessage.text = messages[Int.random(in: 0...(messages.count - 1))]
        imageView.image = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
        
    
//        let awesomeMessage = "You are Awesome!"
//        let greatMessage = "You are Great!"
//        let bombMessage = "You Are Da Bomb"
//
//        if myMessage.text == awesomeMessage{
//            myMessage.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//
//        } else if myMessage.text == greatMessage {
//            myMessage.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//
//        }
//            else {
//                myMessage.text = awesomeMessage
//                imageView.image = UIImage(named: "image0")
//            }
   }
    
}

