//
//  studyViewController.swift
//  study2
//
//  Created by ogawa takuma on 2017/08/05.
//  Copyright © 2017年 ogawa takuma. All rights reserved.
//

import UIKit

class studyViewController: UIViewController {

    let saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var pointLabel: UILabel!
    
    var count: Float = 0.0
    
    var point: Int = 0
    
    var timer: Timer = Timer()
    
    @IBOutlet var pointBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(
                timeInterval: 0.01,
                target: self,selector:#selector(self.up),userInfo: nil,repeats: true)
        }
           }
    
    @IBAction func stop() {
        if timer.isValid {
            timer.invalidate()
            
        }
        
    }
    
    @IBAction func clear() {
        count = 0.0
    }

    func up() {
        count = count + 0.01
        label.text = String(format: "%.2f", count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if count == Float(Int(count)) && Int(count) % 10 == 0 {
            point += 1
            saveData.set(point, forKey: "02")
            pointLabel.text = String(point)
        }
        
        
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
