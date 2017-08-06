//
//  ViewController.swift
//  study2
//
//  Created by ogawa takuma on 2017/07/30.
//  Copyright © 2017年 ogawa takuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let saveData: UserDefaults = UserDefaults.standard
    
        @IBOutlet var imaLabel: UILabel!
    
    var number: Int = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func awa() {
        number = 1
        saveData.set(number, forKey: "01")
    }
    @IBAction func mario() {
        number = 2
        saveData.set(number, forKey: "01")
    }
    @IBAction func garasu() {
        number = 3
        saveData.set(number, forKey: "01")
    }
    @IBAction func moon() {
        number = 4
        saveData.set(number, forKey: "01")
    }
    @IBAction func modoru() {
        dismiss(animated: true, completion: nil)
    }
    
}

