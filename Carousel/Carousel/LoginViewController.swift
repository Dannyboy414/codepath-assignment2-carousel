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
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func signInButton(sender: AnyObject) {
        
        func showAlertWithTitle(title: String, andMessage message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel){ (action) in }
            alert.addAction(cancelAction)
            presentViewController(alert, animated: true){}
        }
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            showAlertWithTitle("Email and Password are required", andMessage: "Please enter your Email Address and Password")
        } else {
            activityIndicator.startAnimating()
            delay(2) {
                if self.emailField.text == "dan@gmail.com" && self.passwordField.text == "password" {
                    self.activityIndicator.stopAnimating()
                    self.performSegueWithIdentifier("signInButtonSegue", sender: self)
                } else {
                    showAlertWithTitle("Incorrect Email or Password", andMessage: "Please check your Email and Password to make sure they're Correct")
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
