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
    
    @IBOutlet weak var pointResult: UILabel!
    
    var playerScr = 0
    var cpuScr = 0
    var pointRslt = ""
    

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
            
            pointRslt = "Point For Player!"
            
            pointResult.text = String(pointRslt)
            
            
       
        }
        if leftNumber < rightNumber {
            
            cpuScr += 1
            
            cpuScore.text = String(cpuScr)
            
            pointRslt = "Point for CPU!"
            
            pointResult.text = String(pointRslt)
   
        } else {
            
            pointRslt = "DRAW!"
            
            pointResult.text = String(pointRslt)
        }
    
        if playerScr >= 10 {
           
            pointRslt = "Player WIN!"
            pointResult.text = String(pointRslt)
            
            
        } else if cpuScr >= 10 {
            
            pointRslt = "CPU WIN!"
            pointResult.text = String(pointRslt)
            
        }
        
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        
        playerCard.image = UIImage(named: "back")
        cpuCard.image = UIImage(named: "back")
        
        playerScr = 0
        cpuScr = 0
        
        playerScore.text = String(playerScr)
        cpuScore.text = String(cpuScr)
        
        pointRslt = "Score Was Reset!"
        pointResult.text = String(pointRslt)
        
        print("Reset score was successful")
    }

    // lets check
    
}



