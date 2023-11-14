//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Ricardo Camarena on 07/11/2023.
//  Copyright © 2023 Ricardo Camarena. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        errorLabel.text = ""
    }
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    self.errorLabel.text = e.localizedDescription
                } else {
                    // Navigate to ChatViewController
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
}
