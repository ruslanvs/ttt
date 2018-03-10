//
//  ViewController.swift
//  ttt
//
//  Created by Ruslan Suvorov on 3/7/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var c = UIColor.red
//    var score = [String: Int]()
    var board = [Int: String]()
    let combinations = [
        [1,2,3], [4,5,6], [7,8,9],
        [1,4,7], [2,5,8], [3,6,9],
        [1,5,9], [3,5,7]
    ]

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
            if sender.backgroundColor == UIColor.red {
                board[sender.tag] = "red"
            } else {
                board[sender.tag] = "blue"
            }
//            if let c = board[sender.tag] {
//                print( board, c )
//            }
            for combination in combinations {
                print( combination )
                if board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] {
                    winnerLabel.text = board[combination[0]]
                }
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton ){
        for button in buttons {
            button.backgroundColor = UIColor.clear
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
