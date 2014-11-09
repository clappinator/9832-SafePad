//
//  CodeViewController.swift
//  9832 SafePad
//
//  Created by Conal Clapper on 08/11/2014.
//  Copyright (c) 2014 Conal Clapper. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
 
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    var counter = 0
    var timer = NSTimer()
    var timerb = NSTimer()
    var timerc = NSTimer()
    //func runTimer(){
        
    //}

    

    @IBOutlet weak var calculatorDisplay: UILabel!

    @IBAction func numberTapped(sender: AnyObject) {
        var number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        }
        
        else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
        
    }
    
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func startCount(sender: AnyObject) {
        progressView.setProgress(1.0, animated: true)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "runTimer", userInfo: nil, repeats: false)
        
            //calculatorDisplay.text = "Success"

    }
   
    func runTimer() {
        calculatorDisplay.text = "Sequence Accepted"
        timerb = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "runTimer2", userInfo: nil, repeats: false)
    }

    
    func runTimer2() {
        calculatorDisplay.text = "Input Sequence 2"
        timer.invalidate()
        timerc = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: "runTimer3", userInfo: nil, repeats: false)
    }
    
    
    func runTimer3() {
        calculatorDisplay.text = ""
        timerb.invalidate()
        progressView.setProgress(0, animated: true)
        
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         //NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "runTimer", userInfo: nil, repeats: true)

        progressView.setProgress(0, animated: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
