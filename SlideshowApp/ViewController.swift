//
//  ViewController.swift
//  SlideshowApp
//
//  Created by ichikieriko. on 2018/04/19.
//  Copyright © 2018年 eriko.ichiki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        @IBAction func unwind(_ segue: UIStoryboardSegue) {
            if self.timer==nil{
                self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.onTimer), userInfo: nil, repeats: true)
                zbutton.setTitle("停止", for: .normal)
                susumu.isEnabled = false
                modoru.isEnabled = false
                
            }else if self.timer != nil{
                zbutton.setTitle("再生", for: .normal)
                self.timer?.invalidate()
                self.timer=nil
                susumu.isEnabled = true
                modoru.isEnabled = true
                }
    }
    @IBAction func tapimage(_ sender: Any) {
        performSegue(withIdentifier: "kakudai",sender: nil)
        self.timer?.invalidate()
    }
    
    @IBOutlet weak var modoru: UIButton!
    @IBOutlet weak var susumu: UIButton!
    @IBOutlet weak var zbutton: UIButton!
    @IBOutlet weak var uiimage: UIImageView!
    var timer : Timer?
    
    @IBAction func go(_ sender: Any) {
        dispImageNo += 1
        displayImage()

    }
    
    @IBAction func `return`(_ sender: Any) {
        dispImageNo -= 1
        
        displayImage()
    }
    
    @IBAction func playstop(_ sender: Any) {
        if self.timer==nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.onTimer), userInfo: nil, repeats: true)
            zbutton.setTitle("停止", for: .normal)
            susumu.isEnabled = false
            modoru.isEnabled = false
            
        }else if self.timer != nil{
            zbutton.setTitle("再生", for: .normal)
            self.timer?.invalidate()
            self.timer=nil
            susumu.isEnabled = true
            modoru.isEnabled = true
        }
    }
    
    
    
    @objc func onTimer(timer: Timer) {
        
        dispImageNo += 1
        displayImage()
        
        
    }
    
    var dispImageNo = 0
    let imageNameArray = [
        "panda.jpeg",
        "neko2.jpeg",
        "ダウンロード.jpeg",
        ]
    func displayImage() {
        
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        
        
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        let name = imageNameArray[dispImageNo]
        
        
        let image = UIImage(named: name)
        
        
        uiimage.image = image
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "panda.jpeg")
        uiimage.image = image
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
      
        resultViewController.x = UIImage(named: imageNameArray[dispImageNo])
    }
        
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

