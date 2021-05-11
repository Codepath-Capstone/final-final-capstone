//
//  ProfileViewController.swift
//  Subscription Tracker
//
//  Created by Brian Calabrese on 4/14/21.
//

import UIKit
import Parse
class ProfileViewController: UIViewController {
    
   
   
    
    @IBOutlet weak var UserNameLabel: UILabel!
    
    @IBOutlet weak var CurrentTotalLabel: UILabel!
    @IBOutlet weak var BudgetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }


    
    class AppCell: UITableViewCell
    {
        @IBOutlet weak var AppNameLabel: UILabel!
        @IBOutlet weak var CostLabel: UILabel!
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//
//
        let query = PFQuery(className:"Budget")
       let location = query.includeKey("author")
        print("location: " , location )
        query.findObjectsInBackground { (budget, error) in
            if budget != nil {
                         print ("printed!")
                
                
                print (budget as Any)
                     } else {
                         print ("failed!")
                     }
        }
        
        query.includeKey("author")
        query.getObjectInBackground(withId: "NgRi2HaV2v") { (budget, error) in
            if budget != nil {
                print ("printed!")
            } else {
                print ("failed!")
            }
        }
        
//        UserNameLabel.text! = budget["author"] as? String
        
        
    }
   
    @IBAction func RemoveButton(_ sender: Any) {
        
    }
    
    
    @IBOutlet weak var CurrentSubscriptionsTableView: UITableView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
