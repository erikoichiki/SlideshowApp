//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by ichikieriko. on 2018/04/22.
//  Copyright © 2018年 eriko.ichiki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var gazou2: UIImageView!
    var x: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gazou2.image =   x  // Do any additional setup after loading the view.
        
        var transScale = CGAffineTransform()
        transScale = CGAffineTransform(scaleX: 2, y: 2)
        gazou2.transform = transScale
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
