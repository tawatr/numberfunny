//
//  ViewController.swift
//  numberfunny
//
//  Created by Tawat Rung-Arunwan on 9/10/17.
//  Copyright © 2017 TAWATER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var numberString="";
    
    @IBOutlet weak var numberLabel: UILabel!
    
    func addInt( n1Int: Int ) -> Int{
        let result = n1Int+1;
        return result;
    }
    func decInt( n1Int: Int ) -> Int{
        let result = n1Int-1;
        return result;
    }
    

    @IBAction func decreaseAction(_ sender: Any) {
        var number1=Int(numberLabel.text!)
        print( "Decrease button clicked" )
        print( "Input number \(String(describing: numberLabel.text))")
        //        numberLabel.text=String(number1!-1)
//        numberLabel.text=String(decInt( n1Int: number1! ))
        var cls1 = testclass1();
        numberLabel.text=String( cls1.decNumber(n1Int: number1!) );
    }
    
    @IBAction func increaseAction(_ sender: Any) {
        var number1=Int(numberLabel.text!)
        print( "Increase button clicked" )
        print( "Input number \(String(describing: numberLabel.text))")
//        numberLabel.text=String(number1!+1)
        numberLabel.text=String(addInt( n1Int: number1! ))
    }
    
    func Zeroing( _: Void ) -> Int{
        return 0;
    }
    
    @IBAction func resetAction(_ sender: Any) {
        numberLabel.text=String( Zeroing() )
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

