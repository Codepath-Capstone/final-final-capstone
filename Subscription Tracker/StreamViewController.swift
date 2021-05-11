// StreamViewController.swift
// Subscription Tracker
//
// Created by Brian Calabrese on 4/14/21.
//
import UIKit
import Foundation
class StreamViewController:  UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var appData = [[String: Any]]()
//  var searchText = [String]()
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 50
    }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = UITableViewCell()
      //cell.AppNameLabel!.text = dataDictionary[indexPath.row]
      return cell
  }
    
    

  
  class AppCell: UITableViewCell{
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var AppNameLabel: UILabel!
    
    
    
  }
  @IBAction func ProfileButton(_ sender: Any) {
  }
  @IBOutlet weak var AppTableView: UITableView!
    
  @IBAction func DetailsButton(_ sender: Any) {
  }
  @IBAction func AddButton(_ sender: Any) {
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.delegate = self
    
    // Do any additional setup after loading the view.
//    let headers = [
//      "x-rapidapi-key": "aae7237d85msh2d2846fbe299da2p1af038jsn5cdef4e497c6",
//      "x-rapidapi-host": "app-stores.p.rapidapi.com"
//    ]
//    var request = URLRequest(url: URL(string: "https://app-stores.p.rapidapi.com/search?term=facebook&store=google&language=en")! as URL,
//                        cachePolicy: .useProtocolCachePolicy,
//                      timeoutInterval: 10.0)
//    request.httpMethod = "GET"
//    request.allHTTPHeaderFields = headers
//    let session = URLSession.shared
//    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//        if let error = error {
//            print (error.localizedDescription)
//
//      } else if let data = data {
//        // let httpResponse = response as? HTTPURLResponse
//        let dataDictionary = try! JSONSerialization.jsonObject(with: data, options:[]) as! [String: Any]
//        // print(httpResponse as Any)
//        //appData = dataDictionary["name"]
//        self.appData = dataDictionary["0"] as! [[String : Any]]
//
//        print(self.appData);
        //print(self.appData)
//        let appName = self.appData.filter { (key, value) in
//          key.contains("name")}
//        let appDescription = self.appData.filter { (key, value) in
//          key.contains("description")}
//        let appImg = self.appData.filter { (key, value) in
//          key.contains("icons")}
//        print(dataDictionary)
//        print(appName.values)
//        print(appDescription.values)
//        print(appImg.values)
//      }
//    })
  /*
  // MARK: - Navigation
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
  }
  */
//    dataTask.resume()
  }
}
