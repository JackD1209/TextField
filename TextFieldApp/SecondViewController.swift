//
//  SecondViewController.swift
//  TextFieldApp
//
//  Created by Đoàn Minh Hoàng on 4/1/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var usernameFromFirstVC: String?
    @IBOutlet weak var secondVCLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        secondVCLable.text = usernameFromFirstVC!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
