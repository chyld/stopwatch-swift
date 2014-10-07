//
//  ViewController.swift
//  Stopwatch
//
//  Created by Chyld Medford on 10/6/14.
//  Copyright (c) 2014 Chyld Medford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0.0
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var display: UILabel!
    
    @IBAction func startTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.001, target: self, selector: Selector("fire"), userInfo: nil, repeats: true)
    }
    
    func fire(){
        counter += 0.001
        display.text = String(format: "%.3f", counter)
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        display.text = "0.000"
    }
}
