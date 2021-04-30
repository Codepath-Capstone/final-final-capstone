//
//  SignUpViewController.swift
//  Subscription Tracker
//
//  Created by Brian Calabrese on 4/14/21.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func SignUpButton(_ sender: Any) {
        
                let user = PFUser()
                user.username = UsernameTextField.text
                user.email = EmailTextField.text
                user.password = PasswordTextField.text
        
                user.signUpInBackground { (success, error) in
                    if success {
                        self.performSegue(withIdentifier: "signUpSegue", sender: nil)
                        UserDefaults.standard.set(true, forKey: "userLoggedIn")
                    } else {
                        print ("Error: \(error?.localizedDescription)")
                    }
                }
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
