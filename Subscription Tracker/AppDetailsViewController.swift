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
  
    @IBOutlet weak var totalRatingsLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        appNameLabel.text = app["name"] as? String
        appContent.text = app["description"] as? String
      
        
        if let price = app["price"] as? [String:Any], let currency = price["display"] as? String{
//            print(currency)
            subscriptionCost.text = currency
        } else {
            print("failed to find price")
        }
        if let icons = app["icons"] as? [String:Any], let largeIcon512 = icons["large"] as? String{
//            print(largeIcon512)
//            posterUrl = largeIcon512
            let posterUrl = URL(string: largeIcon512)
            appImageView.af_setImage(withURL: posterUrl!)
        } else {
            print("failed to find icon")
        }
        if let ratings = app["ratings"] as? [String:Any], let avgRating = ratings["average"] as? Double, let totalRatings = ratings["total"] as? Int{
//            print(avgRating)
//            print(totalRatings)
            var stringRating = String(avgRating)
            var stringTotalRating = String(totalRatings)
            ratingsLabel.text = stringRating
            totalRatingsLabel.text = stringTotalRating
        } else {
            print("failed to find rating")
        }
        
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
