//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Ricardo Camarena on 07/11/2023.
//  Copyright © 2023 Ricardo Camarena. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel! // Changed it from UILabel to CLTypingLabel to use the pod
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = K.appName
        
        // Adjust Label to fit the text inside the label for different screen sizes
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.minimumScaleFactor = 0.5
        titleLabel.numberOfLines = 1
        
//      The commented code is for the typing animation without the use of CocoaPods
//        // Emptying the label
//        titleLabel.text = ""
//        
//        var charIndex = 0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            // Delaying the addition of a character to animate the text
//            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
    }
    

}
