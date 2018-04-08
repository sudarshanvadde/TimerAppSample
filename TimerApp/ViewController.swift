//
//  ViewController.swift
//  TimerApp
//
//  Created by Sundir Talari on 06/04/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var time = 0.0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startBtn(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(ViewController.gettingStarted), userInfo: nil, repeats: true)
        
    }
    @IBAction func pauseBtn(_ sender: Any) {
        
        timer.invalidate()
        
    }
    @IBAction func resetBtn(_ sender: Any) {
        timer.invalidate()
        time = 0.0
        timerLabel.text = "\(time)"
    }
    
    @objc func gettingStarted() {
        
        time += 0.2
        timerLabel.text = "\(time)"
        
    }
    
}

