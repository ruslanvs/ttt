//
//  ViewController.swift
//  ttt
//
//  Created by Ruslan Suvorov on 3/7/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var a1button: UIButton!
    @IBOutlet weak var a2button: UIButton!
    @IBOutlet weak var a3button: UIButton!
    @IBOutlet weak var b1button: UIButton!
    @IBOutlet weak var b2button: UIButton!
    @IBOutlet weak var b3button: UIButton!
    @IBOutlet weak var c1button: UIButton!
    @IBOutlet weak var c2button: UIButton!
    @IBOutlet weak var c3button: UIButton!
    
    var c = UIColor.red
    var score = [String: Int]()
    var board = [Int: Int]()

    func color() -> UIColor {
//        var color: UIColor = UIColor()
        if c == UIColor.red {
            c = UIColor.blue
        } else {
            c = UIColor.red
        }
        return c
    }

    @IBAction func tttButtonPressed(_ sender: UIButton ){
        if sender.backgroundColor != UIColor.red && sender.backgroundColor != UIColor.blue {
            sender.backgroundColor = color()
        }
    }
    
    @IBAction func reset(_ sender: UIButton ){
        a1button.backgroundColor = UIColor.clear
        a2button.backgroundColor = UIColor.clear
        a3button.backgroundColor = UIColor.clear
        b1button.backgroundColor = UIColor.clear
        b2button.backgroundColor = UIColor.clear
        b3button.backgroundColor = UIColor.clear
        c1button.backgroundColor = UIColor.clear
        c2button.backgroundColor = UIColor.clear
        c3button.backgroundColor = UIColor.clear
        
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

