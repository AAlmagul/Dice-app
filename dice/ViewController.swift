//
//  ViewController.swift
//  dice
//
//  Created by Алмагуль Абдыгали on 11.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    var index1: Int = 0
    var index2: Int = 0
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    let diceImages = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]

    @IBAction func RollingEvent(_ sender: UIButton) {
        randomizer()
    }

    func randomizer(){
        index1 = Int(arc4random_uniform(6))
        index2 = Int(arc4random_uniform(6))
        dice1.image = UIImage(named: diceImages[index1])
        dice2.image = UIImage(named: diceImages[index2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) 
    {
        randomizer()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}

