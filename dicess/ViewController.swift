//
//  ViewController.swift
//  dicess
//
//  Created by DDUKK on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    var score:Int = 0
    let imagedice=["dice1","dice2","dice3","dice4","dice5","dice6"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageview1.image = UIImage(named: "dice1")
        imageview2.image = UIImage(named: "dice3")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func play(_ sender: UIButton) {
        imageview1.image = UIImage(named:imagedice[Int(arc4random_uniform(6))])
        imageview2.image = UIImage(named:imagedice[Int(arc4random_uniform(6))])
        label.text=String(score)

        if(imageview1.image == imageview2.image){
            score+=2
        }
        
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var imageview2: UIImageView!
    @IBOutlet weak var imageview1: UIImageView!
    
}

