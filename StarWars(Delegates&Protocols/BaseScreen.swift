//
//  BaseScreen.swift
//  StarWars(Delegates&Protocols
//
//  Created by siddharth bhalla on 7/22/17.
//  Copyright © 2017 sb. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.height/2
    }
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        // Pulls up SelectionScreen once chooseButton is tapped 
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        // Assigning selectionDelegate variable to selectionVC using base screen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

extension BaseScreen: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
}
