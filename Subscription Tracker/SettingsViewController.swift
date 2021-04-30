//
//  SettingsViewController.swift
//  Subscription Tracker
//
//  Created by Brian Calabrese on 4/16/21.
//

import UIKit
import Parse
class SettingsViewController: UIViewController {

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
