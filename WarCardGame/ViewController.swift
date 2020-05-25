//
//  ViewController.swift
//  WarCardGame
//
//  Created by Rifqi Alfaizi on 23/05/20.
//  Copyright © 2020 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerCard: UIImageView!
    @IBOutlet weak var cpuCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var playerScr = 0
    var cpuScr = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealBtnTapped(_ sender: Any) {
        
        // Declare random number
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
//        print ("left Card\(leftNumber)")
//        print("right card\(rightNumber)")
        
        playerCard.image = UIImage(named: "card\(leftNumber)")
        cpuCard.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            
            playerScr += 1
            
            playerScore.text = String(playerScr)
       
        }
        if leftNumber < rightNumber {
            
            cpuScr += 1
            
            cpuScore.text = String(cpuScr)
        }
    
        if playerScr >= 10 {
           
            print("PLAYER WIN")
            
        } else if cpuScr >= 10 {
            
            print("CPU WIN")
        }
     
        // Hallo apakah ini sudah masuk ke GitHub?
        // Tentu Saja!
    }
    
    
}



