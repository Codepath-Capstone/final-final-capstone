//
//  MoviesViewController.swift
//  Subscription Tracker
//
//  Created by Austin on 5/11/21.
//

import UIKit
import AlamofireImage
class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var apps = [[String:Any]]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let headers = [
          "x-rapidapi-key": "aae7237d85msh2d2846fbe299da2p1af038jsn5cdef4e497c6",
          "x-rapidapi-host": "app-stores.p.rapidapi.com"
        ]
        var request = URLRequest(url: URL(string: "https://app-stores.p.rapidapi.com/search?term=facebook&store=google&language=en")! as URL,cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
//        let url = URL(string: "https://app-stores.p.rapidapi.com/search?term=facebook&store=google&language=en")!
                            
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
      
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if error != nil {
                print("some error occured")
           
        } else {
           
            if let urlContent =  data {
    //        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    //          if (error != nil) {
    //            print(error as Any)
    //          } else if let data = data {
                // let httpResponse = response as? HTTPURLResponse
    //            let dataDictionary = try! JSONSerialization.jsonObject(with: data, options:[]) as! Array<Any>
//                                let jsonResult = try! JSONSerialization.jsonObject(with: data!, options:[]) as! Array<Any>
                do{
                    let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)
                    // print(httpResponse as Any)
        //            appData = dataDictionary["name"]
        //            self.appData = dataDictionary[0] as! [String : Any]
        //            print(self.appData)
        //            let appName = self.appData.filter { (key, value) in
        //              key.contains("name")}
        //            let appDescription = self.appData.filter { (key, value) in
        //              key.contains("description")}
        //            let appImg = self.appData.filter { (key, value) in
        //              key.contains("icons")}
        //            print(dataDictionary)
                        
        //            self.apps = dataDictionary as! [[String:Any]]
                    self.apps = jsonResult as! [[String:Any]]
                    
                  
//                    guard let newValue = jsonResult as? [[String: Any]] else {
//                                             print("invalid format")
//
//                                             return
//                    }
//
                    
                    self.tableView.reloadData()
                } catch {
                    print("JSON Preocessing failed")
                }
            
                
    //            print(self.apps)
                
                
    //            print(appName.values)
    //            print(appDescription.values)
    //            print(appImg.values)
              }
        }
         
//        dataTask.resume()
        // Do any additional setup after loading the view.
        }
        task.resume()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "AppCell", for: indexPath) as! AppCell

        let app = apps[indexPath.row]
        
//        print("HERE is app ", indexPath.row, ":")
        
        let title = app["name"] as! String
        let description = app["description"] as! String
        if let price = app["price"] as? [String:Any], let currency = price["display"] as? String{
//            print(currency)
        } else {
            print("failed to find price")
        }
        if let icons = app["icons"] as? [String:Any],
           let largeIcon512 = icons["large"] as? String{
//            print(largeIcon512)
//            posterUrl = URL(string: largeIcon512)
            let posterUrl = URL(string: largeIcon512)
            cell.appImageView.af_setImage(withURL: posterUrl!)
        } else {
            print("failed to find icon")
        }
        if let ratings = app["ratings"] as? [String:Any], let avgRating = ratings["average"] as? Double, let totalRatings = ratings["total"] as? Int{
//            print(avgRating)
//            print(totalRatings)
        } else {
            print("failed to find rating")
        }
        
        cell.appNameLabel.text = title
        cell.appContent.text = description 
        
     
//        cell.appNameLabel.text = "Some name"
//        cell.appContent.text = "something else"
      
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        
        let app = apps[indexPath.row]
        
        var detailsViewController = segue.destination as! AppDetailsViewController
        
        detailsViewController.app = app
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    

}
