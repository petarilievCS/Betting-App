//
//  BetViewController.swift
//  Betting-App
//
//  Created by Petar Iliev on 4.4.23.
//

import UIKit

class BetViewController: UIViewController {
    
    // MARK: - @IBOutlets
    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var awayView: UIView!
    @IBOutlet weak var awayLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var payoutView: UIView!
    @IBOutlet weak var payoutAmountView: UIView!
    @IBOutlet weak var oddsView: UIView!
    @IBOutlet weak var oddsAmountView: UIView!
    @IBOutlet weak var payoutAmountLabel: UILabel!
    @IBOutlet weak var oddsAmountLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize UI
        Utilities.customizeButton(submitButton)
        Utilities.customizeViews(homeView, awayView)
        Utilities.customizeViews(payoutView, payoutAmountView)
        Utilities.customizeViews(oddsView, oddsAmountView)
        Utilities.customizeButtons(decreaseButton, increaseButton)
    }
}
