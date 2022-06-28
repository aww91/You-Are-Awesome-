//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Anthony Whitfield on 4/29/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var myMessage: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var messageCount = 0
    var imageCount = 1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    var messages = ["You Are Awesome!!",
                    "You Are Great!",
                    "You Are Fantastic!",
                    "When the Genius Bar Needs Help, They Call You!",
                    "Fabulous? That's You!",
                    "You've Got The Design Skills of Jony Ive"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var newMessage = messages[Int.random(in: 0...(messages.count - 1))]
        while myMessage.text == newMessage {
            print("*** We had a repeating value. Both newMessage and myMessage are the same \(newMessage) and \(myMessage.text)")
            newMessage = messages[Int.random(in: 0...(messages.count - 1))]
        }
        myMessage.text = newMessage
            
        
        
        
        
        var newImageView = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
        
        while imageView.image == newImageView {
            print("*** We had a repeating value. Both newImageView and imageView are the same \(newImageView) and \(imageView.image)")
            newImageView = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
        }
        imageView.image = newImageView
        
    //Play Sounds
        if let sound = NSDataAsset(name: "sound1"){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
           
        }else{
            print("ERROR: Could not read data from file sound1")
        }

   }
    
}

