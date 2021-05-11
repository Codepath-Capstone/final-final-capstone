//
//  AppDetailsViewController.swift
//  Subscription Tracker
//
//  Created by Austin on 5/11/21.
//

import UIKit
import AlamofireImage
class AppDetailsViewController: UIViewController {
    
    var app: [String:Any]!
    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appContent: UILabel!
    @IBOutlet weak var subscriptionCost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        appNameLabel.text = app["name"] as? String
        appContent.text = app["description"] as? String
        let posterUrl = URL(string: "https://play-lh.googleusercontent.com/6Sp9grilVISOGqi92M26BH49Tj6o_VX_gByA4u1rl8kAvqOoY9n5EzDEHcFEnGHlzg=w128")
        
        appImageView.af_setImage(withURL: posterUrl!)
        
        
        // Do any additional setup after loading the view.
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
