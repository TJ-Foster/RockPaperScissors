//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by TJ Foster on 2020-02-03.
//  Copyright © 2020 TJ Foster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let rpsImages = ["rock","paper","scissors"]
    
    @IBOutlet weak var outcome: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    
    
    
    
    @IBOutlet weak var player1Image: UIImageView!
    
    @IBOutlet weak var p1LockedIn: UILabel!
    
    var p1Chosen = false
    
    @IBAction func Player1Button(_ sender: Any) {
        if p1Chosen == false{
            p1Chosen = true
            let randChoice = rpsImages.randomElement()
            if let p1Image = randChoice{
                player1Image.image = UIImage(named: p1Image)
            }
            
            if  p1Chosen && p2Chosen == true {
                playAgainButton.backgroundColor = UIColor.yellow
                playAgainButton.setTitle("Play Again",for: .normal)
                
                p1LockedIn.text = "Locked In"
                
                if  player1Image.image  == UIImage(named: "rock") && player2Image.image  == UIImage(named: "scissors") || player1Image.image  == UIImage(named: "scissors") && player2Image.image  == UIImage(named: "paper") || player1Image.image  == UIImage(named: "paper") && player2Image.image  == UIImage(named: "rock")
                    {
                    outcome.text = "Player 1 Wins!"
                }
                else if player2Image.image  == UIImage(named: "rock") && player1Image.image  == UIImage(named: "scissors") || player2Image.image  == UIImage(named: "scissors") && player1Image.image  == UIImage(named: "paper") || player2Image.image  == UIImage(named: "paper") && player1Image.image  == UIImage(named: "rock")
                    {
                    outcome.text = "Player 2 Wins!"
                }
                else if player1Image.image == player2Image.image {
                    outcome.text = "DRAW"
                }
            }
        }
    }
    
    
    
    @IBOutlet weak var player2Image: UIImageView!
    
    @IBOutlet weak var p2LockedIn: UILabel!
    
    var p2Chosen = false
    
    @IBAction func Player2Button(_ sender: Any) {
        if p2Chosen == false {
            p2Chosen = true
            let randChoice = rpsImages.randomElement()
            if let p2Image = randChoice{
                player2Image.image = UIImage(named: p2Image)
            }
            
            if  p1Chosen && p2Chosen == true {
                playAgainButton.backgroundColor = UIColor.yellow
                playAgainButton.setTitle("Play Again",for: .normal)
                
                if  player1Image.image  == UIImage(named: "rock") && player2Image.image  == UIImage(named: "scissors") || player1Image.image  == UIImage(named: "scissors") && player2Image.image  == UIImage(named: "paper") || player1Image.image  == UIImage(named: "paper") && player2Image.image  == UIImage(named: "rock")
                    {
                    outcome.text = "Player 1 Wins!"
                }
                else if player2Image.image  == UIImage(named: "rock") && player1Image.image  == UIImage(named: "scissors") || player2Image.image  == UIImage(named: "scissors") && player1Image.image  == UIImage(named: "paper") || player2Image.image  == UIImage(named: "paper") && player1Image.image  == UIImage(named: "rock")
                    {
                    outcome.text = "Player 2 Wins!"
                }
                else if player1Image.image == player2Image.image {
                    outcome.text = "DRAW"
                }
            }
        }
    }
    
    @IBAction func playAgainButtonAction(_ sender: Any) {
        playAgainButton.backgroundColor = UIColor.clear
        playAgainButton.setTitle("",for: .normal)
        p1LockedIn.text = ""
        p2LockedIn.text = ""
        p1Chosen = false
        p2Chosen = false
        outcome.text = ""
    }
}

