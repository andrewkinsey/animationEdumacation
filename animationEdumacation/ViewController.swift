//
//  ViewController.swift
//  animationEdumacation
//
//  Created by Andrew James Kinsey on 1/12/17.
//  Copyright © 2017 The Cabinents. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var button1Outlet: UIButton!
    @IBOutlet weak var button2Outlet: UIButton!
    @IBOutlet weak var button3Outlet: UIButton!
    @IBOutlet weak var button4Outlet: UIButton!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    
    
    
    @IBAction func button1(_ sender: Any)
    {
        UIView.animate(withDuration: 1.0, animations: {self.button1Outlet.center = CGPoint.init(x: self.imageViewOutlet.center.x, y: self.imageViewOutlet.center.y + 42)})
    }
    
    @IBAction func button2(_ sender: Any)
    {
        let bounds = self.button2Outlet.bounds
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.05, initialSpringVelocity: 8, options:UIViewAnimationOptions.allowAnimatedContent, animations: {
            self.button2Outlet.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 10, height: bounds.size.height)
        }, completion: nil)
    }

    @IBAction func button3(_ sender: Any)
    {
        UIView.animate(withDuration: 0.7 , animations:
            {self.button3Outlet.transform = CGAffineTransform(scaleX: 8, y: 8)
        }, completion: {_ in
            UIView.animate(withDuration: 0.7, animations: {self.button3Outlet.transform = CGAffineTransform.identity})})
    }

    @IBAction func button4(_ sender: Any)
    {
        UIView.animate(withDuration: 0.7 , animations:
            {self.button4Outlet.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }, completion: {_ in
            UIView.animate(withDuration: 0.7, animations: {self.button4Outlet.transform = CGAffineTransform.identity})})
    }



}

