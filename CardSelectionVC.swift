//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Pedro Gutierrez on 8/25/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var cards: [UIImage] = Card.allValues
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard() {
        let cardImage = cards.randomElement() ?? UIImage(named: "AS")
        cardImageView.image = cardImage
    }

    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
}
