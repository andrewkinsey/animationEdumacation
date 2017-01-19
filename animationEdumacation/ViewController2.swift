//
//  ViewController2.swift
//  animationEdumacation
//
//  Created by Andrew James Kinsey on 1/13/17.
//  Copyright © 2017 The Cabinents. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelVC2: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        labelVC2.center = CGPoint.init(x: self.view.frame.width + labelVC2.frame.width + 10, y: 160)
        
    }

    override func viewDidAppear(_ animated: Bool)
    {
        UIView.animate(withDuration: 1.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseOut, animations:
            {
                self.labelVC2.center = CGPoint.init(x: self.view.frame.width/2 - self.labelVC2.frame.width/2, y: 160)
        }, completion: nil)
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
