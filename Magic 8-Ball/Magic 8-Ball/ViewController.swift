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
    
    @IBOutlet weak var ballIAnswerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushedAnswerButton(_ sender: UIButton) {
        randomBallIndex = Int(arc4random_uniform(5))
        print(randomBallIndex)
        
    }
    
}

