//
//  ViewControllerGame.swift
//  final project
//
//  Created by OLIVER MURRAY on 12/6/23.
//

import UIKit

class ViewControllerGame: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    var dices = [Dice(pic: "dice1.png", num: 1), Dice(pic:
            "dice2.png", num: 2), Dice(pic: "dice3.png", num: 3), Dice(pic: "dice4.png", num: 4), Dice(pic: "dice5.png", num: 5), Dice(pic: "dice6.png", num: 6)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func rollAction(_ sender: Any) {
        let rand1 = Int.random(in: 1...6)
        let rand2 = Int.random(in: 1...6)
        
        leftDice.image = UIImage(named: dices[rand1 - 1].pic)
        rightDice.image = UIImage(named: dices[rand2 - 1].pic)
        var dye1 = dices[rand1 - 1].num
        var dye2 = dices[rand2 - 1].num
    }
    
   

}
