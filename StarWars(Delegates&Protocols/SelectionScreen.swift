//
//  SelectionScreen.swift
//  StarWars(Delegates&Protocols
//
//  Created by siddharth bhalla on 7/22/17.
//  Copyright © 2017 sb. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
}
