//
//  ViewController.swift
//  DrawMailer
//
//  Created by Sourabh Deshkulkarni on 5/8/16.
//  Copyright © 2016 Sourabh Deshkulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customView : CustomView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sharePicture() {
        let image = customView.createImageFromContext()
        let message = "Here's a great drawing!"
        var postItems = [message,image]
        let activityVC = UIActivityViewController(activityItems: postItems, applicationActivities: nil)
        presentViewController(activityVC, animated: true, completion: nil)
    }
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
    @IBAction func cls() {
        print("Clear the screen")
        customView?.cls()
    }
    @IBAction func changeBackgroundColor(){
        let newColor = UIColor(red:random(), green: random(), blue: random(),alpha: 1.0)
        //self.superview?.backgroundColor = newColor
        //newColor.set()
        self.view.backgroundColor = newColor
    }

}

