//
//  HomeTableViewController.swift
//  Subscription Tracker
//
//  Created by Austin on 5/11/21.
//

import UIKit

class HomeTableViewController: UITableViewController {

  
    
//    var apps = [[String:Any]]()
//    
//    var appData: [String: Any] = [:]
////      var searchText = [String]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tableView.dataSource = self
//        tableView.delegate = self
//        let headers = [
//          "x-rapidapi-key": "aae7237d85msh2d2846fbe299da2p1af038jsn5cdef4e497c6",
//          "x-rapidapi-host": "app-stores.p.rapidapi.com"
//        ]
//        var request = URLRequest(url: URL(string: "https://app-stores.p.rapidapi.com/search?term=facebook&store=google&language=en")! as URL,cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//          if (error != nil) {
//            print(error as Any)
//          } else if let data = data {
//            // let httpResponse = response as? HTTPURLResponse
//            let dataDictionary = try! JSONSerialization.jsonObject(with: data, options:[]) as! Array<Any>
//            // print(httpResponse as Any)
////            appData = dataDictionary["name"]
////            self.appData = dataDictionary[0] as! [String : Any]
////            print(self.appData)
////            let appName = self.appData.filter { (key, value) in
////              key.contains("name")}
////            let appDescription = self.appData.filter { (key, value) in
////              key.contains("description")}
////            let appImg = self.appData.filter { (key, value) in
////              key.contains("icons")}
////            print(dataDictionary)
//                
//            self.apps = dataDictionary as! [[String:Any]]
//            self.tableView.reloadData()
////            print(self.apps)
//            
////            print(appName.values)
////            print(appDescription.values)
////            print(appImg.values)
//          }
//        })
//        dataTask.resume()
//        
      /*
      // MARK: - Navigation
      // In a storyboard-based application, you will often want to do a little preparation before navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      }
      */
      
//        let headers = [
//                    "x-rapidapi-key": "2c9579d43amshab40c9db7ea61b6p1c9566jsn590bea4ce8d6",
//                    "x-rapidapi-host": "app-stores.p.rapidapi.com"
//                ]
//
//                let request = NSMutableURLRequest(url: NSURL(string: "https://app-stores.p.rapidapi.com/details?id=com.facebook.android&store=google&language=en")! as URL,
//                                                        cachePolicy: .useProtocolCachePolicy,
//                                                    timeoutInterval: 10.0)
//                request.httpMethod = "GET"
//                request.allHTTPHeaderFields = headers
//
//                let session = URLSession.shared
//                let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//                    if (error != nil) {
//                        print(error)
//                    } else {
//                        let httpResponse = response as? HTTPURLResponse
//                        print(httpResponse)
//                    }
//                })
//
//                dataTask.resume()
    }
    

    
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "AppCell", for: indexPath) as! AppCellTableViewCell
//        let app = apps[indexPath.row]
//
//        let title = app["name"] as! String
//
//
//        cell.appNameLabel.text = title
//
////        cell.appNameLabel.text = "Some name"
////        cell.appContent.text = "something else"
//
//        return cell
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return apps.count
//    }
//
//    /*
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
//    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
