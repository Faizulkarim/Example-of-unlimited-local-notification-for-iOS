//
//  ViewController.swift
//  localNotification
//
//  Created by Faizul Karim on 10/4/22.
//

import UIKit
import Robin
class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tap(_ sender: Any) {
        DispatchQueue.main.async {
            self.LocalNotification()
        }
   
    }
    func LocalNotification(){
        for number in 1...180 where number % 2 == 0 {
            if number > 60 {
                let notification = RobinNotification(body: "Test notification!", trigger: .interval(TimeInterval(number), repeats: true))
                _ = Robin.scheduler.schedule(notification: notification)
            }else{
                let notification = RobinNotification(body: "notification!", trigger: .interval(TimeInterval(number), repeats: false))
                _ = Robin.scheduler.schedule(notification: notification)
            }
  
        }
       
    }


}

