//
//  LoggedInViewController.swift
//  FinalProject
//
//  Created by KimSoo Ha on 2017-07-19.
//  Copyright © 2017 SooHa Kim. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedInViewController: UIViewController {

    @IBAction func logoutTapped(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
            
        } catch{
            print("There was a problem logging out")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
