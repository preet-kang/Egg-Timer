//
//  ViewController.swift
//  menu bars
//
//  Created by Amy kang on 2017-07-09.
//  Copyright © 2017 Amy kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer() //defining object to class timer
    var time = 210      // start time
    
    
    func decreaseTmer(){  // function for decrease
        
        if time > 0 {    //condition to check time is not greater than 0
        
        time -= 1
        
        lbltimer.text = String(time) // update time
        
        }
        else {
            
            timer.invalidate()  //stoping timer
        }
        
    }
    
    
    @IBOutlet weak var lbltimer: UILabel!
    

    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()      // stoping timmer
    }
    
    
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTmer), userInfo: nil, repeats: true)   // function
        
        
        
    }
    
    
    
    @IBAction func reset(_ sender: Any) {   // reset timer
        
        time = 210
        
        lbltimer.text = String(time)
    }
    
    @IBAction func plusTen(_ sender: Any) {  // add 10 secs to timer
        
        time += 10
        
        lbltimer.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {  // sub 10 sec frm timer
        
        if time > 10 {     // condition it should be greater than 10
        
        time -= 10
        
        lbltimer.text = String(time)
        
    }
        else{
            
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

