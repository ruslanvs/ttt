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
    var board = [Int: UIColor]()
    let combinations = [
        [1,2,3], [4,5,6], [7,8,9],
        [1,4,7], [2,5,8], [3,6,9],
        [1,5,9], [3,5,7]
    ]
    var gameOn = true

    func color() -> UIColor {
        if c == UIColor.red {
            c = UIColor.blue
        } else {
            c = UIColor.red
        }
        return c
    }

    @IBAction func tttButtonPressed(_ sender: UIButton ){

        if gameOn == true && sender.backgroundColor != UIColor.red && sender.backgroundColor != UIColor.blue {
            sender.backgroundColor = color()
            if sender.backgroundColor == UIColor.red {
                board[sender.tag] = UIColor.red
            } else {
                board[sender.tag] = UIColor.blue
            }

            for combination in combinations {
                if board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && board[combination[0]] != nil {
                    gameOn = false
                    if board[combination[0]] == UIColor.red {
                        winnerLabel.text = "red"
                    } else {
                        winnerLabel.text = "blue"
                    }
                }
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton ){
        for button in buttons {
            button.backgroundColor = nil
            board[button.tag] = nil
            winnerLabel.text = nil
            gameOn = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.text = nil
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
