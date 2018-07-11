//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Austin Thesing on 7/10/18.
//  Copyright © 2018 Austin Thesing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex : Int = 0
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballIAnswerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushedAnswerButton(_ sender: UIButton) {
        updateAnswer()
    }
    func updateAnswer(){
        randomBallIndex = Int(arc4random_uniform(5))
        
        print(randomBallIndex)
        
        ballIAnswerImage.image = UIImage(named: answerArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        updateAnswer()
    }
}

