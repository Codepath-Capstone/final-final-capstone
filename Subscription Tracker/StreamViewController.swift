//  StreamViewController.swift
//  Subscription Tracker
//
//  Created by Brian Calabrese on 4/14/21.
//
import UIKit
import Foundation
class StreamViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headers = [
            "x-rapidapi-key": "aae7237d85msh2d2846fbe299da2p1af038jsn5cdef4e497c6",
            "x-rapidapi-host": "app-stores.p.rapidapi.com"
        ]
        
        var request = URLRequest(url: URL(string: "https://app-stores.p.rapidapi.com/search?term=facebook&store=google&language=en")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            } else if let data = data {
               // let httpResponse = response as? HTTPURLResponse

                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options:[]) as! Array<Any>
                
                // print(httpResponse as Any)
                
                //appData = dataDictionary["name"]
                
                print(dataDictionary)
            }
        })
        
        dataTask.resume()



        // Do any additional setup after loading the view.
    }
    class AppCell: UITableViewCell{
        @IBOutlet weak var AppNameLabel: UILabel!
    }
    @IBAction func ProfileButton(_ sender: Any) {
    }
    @IBOutlet weak var AppTableView: UITableView!
    @IBAction func DetailsButton(_ sender: Any) {
    }
    @IBAction func AddButton(_ sender: Any) {
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


//CODE SNIPPET FROM RAPID API //
//
//let headers = [
//    "x-rapidapi-key": "ce9c2e6f61msh86dde2074749d31p16f6d3jsn7c7b87753b55",
//    "x-rapidapi-host": "app-stores.p.rapidapi.com"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://app-stores.p.rapidapi.com/search?term=sleep&store=google&language=en")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error)
//    } else {

//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse)
//    }
//})
//
//dataTask.resume()
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

//CODE SNIPPET FROM CODEPATH //
//let url = URL(string: "https://app-stores.p.rapidapi.com/search?term=sleep&store=google&language=en")!
//let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
//let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
//let task = session.dataTask(with: request) { (data, response, error) in
//     // This will run when the network request returns
//     if let error = error {
//            print(error.localizedDescription)
//     } else if let data = data {
//            let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
//

//
//     }
//}
//task.resume()
