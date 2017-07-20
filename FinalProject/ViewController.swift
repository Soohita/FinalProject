//
//  ViewController.swift
//  FinalProject
//
//  Created by KimSoo Ha on 2017-07-18.
//  Copyright © 2017 SooHa Kim. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func viewDidAppear(_ animated: Bool) {
        if (Auth.auth().currentUser != nil) {
            self.presentLoggedInScreen()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func createAccountTapped(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                self.presentLoggedInScreen()
            })
        }
    }
    @IBAction func loginTapped(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                self.presentLoggedInScreen()
            })
        }
    }
    
    func presentLoggedInScreen() {
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInVC = storyboard.instantiateViewController(withIdentifier: "LoggedInViewController")
        self.present(loggedInVC, animated: true, completion: nil)
    }
}

