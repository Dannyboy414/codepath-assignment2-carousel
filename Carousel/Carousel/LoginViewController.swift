//
//  LoginViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/12/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    var fieldParentOffset: CGFloat!
    var fieldParentInitialY: CGFloat!
    var signInParentOffset: CGFloat!
    var signInParentInitialY: CGFloat!
    
   
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInParentView: UIView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var carouselText: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var forgotButton: UIButton!
    
    @IBAction func signInButton(sender: UIButton) {
        sender.selected = true
        self.activityIndicator.startAnimating()
        delay(2) {
            if self.emailField.text == "john@gmail.com" && self.passwordField.text == "password" {
                self.activityIndicator.stopAnimating()
                self.performSegueWithIdentifier("SignInSegue", sender: self)

            }
            else {
                self.activityIndicator.stopAnimating()
                self.signInButton.selected = false
                let alertController = UIAlertController(title: "Sign In", message: "Sign In was incorrect", preferredStyle: .Alert)
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                self.presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            }
        }
        
    }
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func emailEditingChanged(sender: AnyObject) {
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            signInButton.enabled = false
        }
        else {
            signInButton.enabled = true
        }
    }
    
    
    func delay(delay:Double, closure:()->()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(delay * Double(NSEC_PER_SEC))
                ),
                dispatch_get_main_queue(), closure)
        }
        
    func keyboardWillShow(notification: NSNotification!) {
            fieldParentView.frame.origin.y = fieldParentInitialY + fieldParentOffset
            signInParentView.frame.origin.y = signInParentInitialY + signInParentOffset
        }
        
    func keyboardWillHide(notification: NSNotification!) {
            fieldParentView.frame.origin.y = fieldParentInitialY
            signInParentView.frame.origin.y = signInParentInitialY
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        
        fieldParentInitialY = fieldParentView.frame.origin.y
        signInParentInitialY = signInParentView.frame.origin.y
        fieldParentOffset = -72
        signInParentOffset = -260

        
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
