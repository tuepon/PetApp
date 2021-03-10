//
//  ViewController.swift
//  PetApp
//
//  Created by SEZAX development on 10/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var barkLabel: UILabel!
    @IBOutlet weak var dogImageView: UIImageView!
    
    // At first, how?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Hide barkLabel
        self.barkLabel.isHidden = true
    }

    // When touch nose, how?
    @IBAction func tapNose(_ sender: Any) {
        // Change dog image
        self.dogImageView.image = UIImage(named: "sigh")
    }
    // When swipe head, how?
    @IBAction func swipeHead(_ sender: Any) {
        // Change dog image
        self.dogImageView.image = UIImage(named: "smile")
    }
    // When swipe body, how?
    @IBAction func tapBody(_ sender: Any) {
        //bark
        //show barkLabel
        self.barkLabel.isHidden = false
        
        // Animate to right
        UIView.animate(withDuration: 1.0, animations: {
            // Change X axis
            self.barkLabel.frame.origin.x = 180
        }, completion: nil)
    }
    
}

