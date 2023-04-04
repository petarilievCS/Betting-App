//
//  MainController.swift
//  Betting-App
//
//  Created by Petar Iliev on 3.4.23.
//

import UIKit
import SwiftUI
import Charts

class MainViewController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var pollView: UIView!
    @IBOutlet weak var pollLabel: UILabel!
    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var homeLogo: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var awayView: UIView!
    @IBOutlet weak var awayLogo: UIImageView!
    @IBOutlet weak var awayLabel: UILabel!
    @IBOutlet weak var graphView: UIView!
    @IBOutlet weak var betView: UIView!
    @IBOutlet weak var betLabel: UILabel!
    
    // MARK: - App lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add chart view
        let lineChart = BettingChartView()
        let hostingController = UIHostingController(rootView: lineChart)
        addChild(hostingController)
        graphView.addSubview(hostingController.view)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: graphView.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: graphView.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: graphView.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: graphView.bottomAnchor)
        ])

        hostingController.didMove(toParent: self)

        // Customize UI
        Utilities.customizeBubble(pollView)
        Utilities.customizeView(homeView)
        Utilities.customizeView(awayView)
        Utilities.customizeView(graphView)
        Utilities.customizeBubble(betView)
    }


}
