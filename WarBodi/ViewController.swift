//
//  ViewController.swift
//  WarBodi
//
//  Created by Hari Krishna Bodicharla on 2/11/17.
//  Copyright © 2017 bodicharla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardImageView: UIImageView!
    
    
    @IBOutlet weak var SecondCardImageView: UIImageView!
    
    @IBOutlet weak var PlayRoundButton: UIButton!
    
    @IBOutlet weak var BackgroundImageView: UIImageView!
    
    @IBOutlet weak var YourScore: UILabel!
    
    @IBOutlet weak var AIScore: UILabel!
    
    
    var playerScore:Int = 0;
    var AInumScore:Int =  0;
    
    var cards:[String] = ["Card1","Card2", "Card3","Card4","Card5","Card6","Card7","Card8","Card9","Card10","jack","queen","king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundButtonTapped(_ sender: UIButton) {
        let firstCardNumber = arc4random_uniform(13)
        
        let fString:String = cards[Int(firstCardNumber)]
        
        let secondCardNumber = arc4random_uniform(13)
        
        
        
        
        let sString:String = cards[Int(secondCardNumber)]
        
    
        self.FirstCardImageView.image = UIImage(named: fString)
        
        self.SecondCardImageView.image = UIImage(named: sString)
        
        if firstCardNumber > secondCardNumber {
            self.playerScore += 1
            self.YourScore.text = String(self.playerScore)
            
            
        }else if firstCardNumber == secondCardNumber{
            
        }else{
            self.AInumScore += 1
            self.AIScore.text = String(self.AInumScore)
        }
        
        
    }

}

