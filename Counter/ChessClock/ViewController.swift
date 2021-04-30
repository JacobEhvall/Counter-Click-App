//
//  ViewController.swift
//  ChessClock
//
//  Created by Jacob  Ehnvall on 2020-01-09.
//  Copyright © 2020 Jacob  Ehnvall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    var countdown = 10
    var count = false
    var timer :Timer?
    
    @IBOutlet weak var timerLabel: UILabel!
      
    
      
    override func viewDidLoad() {
     super.viewDidLoad()
     timerLabel.text = "\(countdown)"
         
      }
    
    @IBAction func StartCountDown(_ sender: UIButton) {
        if( timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo:nil, repeats: true)
        }
    }
   
    
    
     @objc func countDownMethod() {
        
        if (countdown < 1) {
            timerLabel.text = ("10")
        }
        else {
            
        countdown -= 1
                   
        timerLabel.text = "\(countdown)"
            
        }

    }



}

