//
//  SettingsViewController.swift
//  Subscription Tracker
//
//  Created by Brian Calabrese on 4/16/21.
//

import UIKit
import Parse
class SettingsViewController: UIViewController {
    
    @IBOutlet weak var BudgetTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChangeBudgetButton(_ sender: Any) {
    }
    
    @IBAction func ChangeCurrencyButton(_ sender: Any) {
    }
    @IBAction func logoutButton(_ sender: Any) {
        PFUser.logOut()
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
        _ = PFUser.current() // this will now be nil
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onBudgetChange(_ sender: Any) {
        
        var user = PFUser.current()
        
        let budget = PFObject(className: "Budget")
        
        budget["amount"] = BudgetTextField.text!
        budget["author"] = PFUser.current()!
        budget["user"] = user
        
        budget.saveInBackground { (success, error) in
                    if success {
                        self.dismiss(animated: true, completion: nil)
                        print("saved!")
                    } else {
                        print("error!")
                    }
                }
        
//        let budget = PFObject(className: "Budget")
//
//        budget["amount"] = BudgetTextField.text!
//        budget["author"] = PFUser.current()!
//
//        budget.saveInBackground { (success, error) in
//            if success {
//                self.dismiss(animated: true, completion: nil)
//                print("saved!")
//            } else {
//                print("error!")
//            }
//        }
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
