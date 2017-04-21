//
//  FirstViewController.swift
//  TextFieldApp
//
//  Created by Đoàn Minh Hoàng on 4/1/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClicked(_ sender: Any) {
//        checkLogin(user: username.text!, pass: password.text!, success:
//            {
//                self.performSegue(withIdentifier: "moveTo2ndScreen", sender: nil)
//            },
//            error:
//            {
//                let alert = UIAlertController(title: "Alert", message: "Username or password is not correct", preferredStyle:UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
//            })
        
        FIRAuth.auth()?.signIn(withEmail: username.text!, password: password.text!) { (user, error) in
            if error != nil {
                let alert = UIAlertController(title: "Alert", message: "Username or password is not correct",preferredStyle:UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else {
                self.performSegue(withIdentifier: "moveTo2ndScreen", sender: nil)
            }
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveTo2ndScreen" {
            let secondVc = segue.destination as! SecondViewController
            secondVc.usernameFromFirstVC = username.text
        }
    }
    
//    func checkLogin(user: String, pass: String, success: () -> (), error: () -> ()) {
//        if user == admin && pass = admin {
//            success()
//        }
//        else {
//            error()
//        }
//    }
    
}
