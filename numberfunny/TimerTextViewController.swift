//
//  TimerTextViewController.swift
//  numberfunny
//
//  Created by Tawat Rung-Arunwan on 9/10/17.
//  Copyright © 2017 TAWATER. All rights reserved.
//

import UIKit

class TimerTextViewController: UIViewController {

    let numberArray=[ "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" ];
    var numberAInt: Int = 1;
    
    var objTimer=Timer();
    
    @IBOutlet weak var numberLabel: UILabel!
    
    func playTime() -> Void {
        numberAInt += 1
        numberLabel.text=numberArray[numberAInt%10];
    }
    
    @IBAction func playButton(_ sender: Any) {
        print("Play clicked")
        objTimer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.playTime), userInfo: nil, repeats: true)        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        print("Stop clicked")
        objTimer.invalidate()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
