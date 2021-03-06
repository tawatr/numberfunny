//
//  TimerViewController.swift
//  numberfunny
//
//  Created by Tawat Rung-Arunwan on 9/10/17.
//  Copyright © 2017 TAWATER. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    var numberAInt: Int = 1
    var objTimer = Timer()
    
    func playTime() -> Void {
        numberAInt += 1
        numberLabel.text=String( numberAInt )
    }
    
    @IBAction func playButton(_ sender: Any) {
        print("Play button clicked")
        objTimer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.playTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(_ sender: Any) {
        print("Stop button clicked")
        objTimer.invalidate()
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    
    
    
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
