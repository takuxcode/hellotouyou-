//
//  ViewController2.swift
//  study2
//
//  Created by ogawa takuma on 2017/08/05.
//  Copyright © 2017年 ogawa takuma. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    let saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet var haikeiimage: UIImageView!

    var number: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        number = saveData.object(forKey: "01") as? Int ?? 1
        
        if number == 1 {
            haikeiimage.image = UIImage(named: "あわ.jpg")

        } else  if number == 2 {
            haikeiimage.image = UIImage(named: "マリオ.jpg")
        } else if number == 3 {
            haikeiimage.image = UIImage(named: "カッコイイ.jpg")
        } else if number == 4 {
            haikeiimage.image = UIImage(named: "月.jpg")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func modoru() {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
