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
    let totalNumberOfSounds = 4
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
    
    func playSound(soundFileName: String){
        //Play Sounds
            
            if let sound = NSDataAsset(name: soundFileName){
                do {
                    try audioPlayer = AVAudioPlayer(data: sound.data)
                    audioPlayer.play()
                } catch{
                    print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
                }
               
            }else{
                print("ERROR: Could not read data from file \(soundFileName)")
            }
    }
    
    
    
    func newRandomNumber (upperBoundNum: Int) -> Int {
        
        return Int.random(in: 0...upperBoundNum)
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
//        //TEXT MESSAGE
//        // var newMessage = messages[Int.random(in: 0...(messages.count - 1))]
//        var newMessage = messages[newRandomNumber(upperBoundNum: (messages.count - 1))]
//        while myMessage.text == newMessage {
//            print("*** We had a repeating value. Both newMessage and myMessage are the same \(newMessage) and \(myMessage.text)")
//            newMessage = messages[Int.random(in: 0...(messages.count - 1))]
//        }
//        myMessage.text = newMessage
//
//
//        //IMAGE
//        // var newImageView = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
//        var newImageView = UIImage(named: "image" + String(newRandomNumber(upperBoundNum: totalNumberOfImages)))
//
//        while imageView.image == newImageView {
//            print("*** We had a repeating value. Both newImageView and imageView are the same \(newImageView) and \(imageView.image)")
//            newImageView = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
//        }
//        imageView.image = newImageView
//
//        //SOUND
//        // var soundNum = "sound\(String(Int.random(in: 0...4)))"
//        var newSoundNum = "sound\(String(newRandomNumber(upperBoundNum: totalNumberOfSounds)))"
//        var soundNum = ""
//        while soundNum == newSoundNum{
//            print("*** We had a repeating value. Both newSoundNum and soundNum are the same \(newSoundNum) and \(soundNum)")
//            newSoundNum = "sound\(String(newRandomNumber(upperBoundNum: totalNumberOfSounds)))"
//        }
//        soundNum = newSoundNum
//        playSound(soundFileName: soundNum)
        
        // DRY - Don't Repeat Yourself
        
        var newMessage = messages[newRandomNumber(upperBoundNum: (messages.count - 1))]
        var newImageView = UIImage(named: "image" + String(newRandomNumber(upperBoundNum: totalNumberOfImages)))
        var newSoundNum = "sound\(String(newRandomNumber(upperBoundNum: totalNumberOfSounds)))"
        var soundNum = ""
        
        while myMessage.text == newMessage || imageView.image == newImageView  || soundNum == newSoundNum {
            if myMessage.text == newMessage {
                print("*** We had a repeating value. Both newMessage and myMessage are the same \(newMessage) and \(myMessage.text)")
                newMessage = messages[Int.random(in: 0...(messages.count - 1))]
            }
            if imageView.image == newImageView {
                print("*** We had a repeating value. Both newImageView and imageView are the same \(newImageView) and \(imageView.image)")
                newImageView = UIImage(named: "image" + String(Int.random(in: 0...totalNumberOfImages)))
            }
            if soundNum == newSoundNum {
                print("*** We had a repeating value. Both newSoundNum and soundNum are the same \(newSoundNum) and \(soundNum)")
                newSoundNum = "sound\(String(newRandomNumber(upperBoundNum: totalNumberOfSounds)))"
            }
        }
        myMessage.text = newMessage
        imageView.image = newImageView
        soundNum = newSoundNum
        playSound(soundFileName: soundNum)
        
    
   }
    
}

