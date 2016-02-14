//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/12/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var uiScrollView: UIScrollView!
    @IBAction func closeButtonAction(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: {})
    }

    @IBAction func didLogOut(sender: AnyObject) {
        let alertController = UIAlertController(title: "", message: "Are you sure you want to Log Out?", preferredStyle: .ActionSheet)
        let CancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle response here.
        }
        
        let LogOutAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
            // handle response here.
            self.performSegueWithIdentifier("LogoutSegue", sender: self)
            
        }
        
        // add the OK action to the alert controller
        alertController.addAction(LogOutAction)
        alertController.addAction(CancelAction)
        self.presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiScrollView.contentSize = CGSize(width: 320, height: 750)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
