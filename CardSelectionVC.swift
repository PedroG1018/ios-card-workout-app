//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Pedro Gutierrez on 8/25/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    
    @IBOutlet var stopButton: UIButton!
    @IBOutlet var rulesButton: UIButton!
    @IBOutlet var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopButton.layer.cornerRadius = 8
        restartButton.layer.cornerRadius = 8
        rulesButton.layer.cornerRadius = 8
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
}
