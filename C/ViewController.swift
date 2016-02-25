//
//  ViewController.swift
//  C
//
//  Created by 牛牛 on 16/2/25.
//  Copyright © 2016年 MZ. All rights reserved.
//

import UIKit
import JSAnimatedImagesView
class ViewController: UIViewController,JSAnimatedImagesViewDataSource {
    @IBOutlet var VC: JSAnimatedImagesView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.VC.dataSource = self
    }
    
    func animatedImagesView(animatedImagesView: JSAnimatedImagesView!, imageAtIndex index: UInt) -> UIImage! {
        return UIImage(named: "image\(index+1).jpg")
    }
    
    func animatedImagesNumberOfImages(animatedImagesView: JSAnimatedImagesView!) -> UInt {
        return 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

