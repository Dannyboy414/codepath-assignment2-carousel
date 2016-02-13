//
//  IntroductionViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/11/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var uiScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiScrollView.contentSize = CGSizeMake(320, introImageView.image!.size.height)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        uiScrollView.contentInset.top = 0
        uiScrollView.contentInset.bottom = 50
        uiScrollView.scrollIndicatorInsets.top = 0
        uiScrollView.scrollIndicatorInsets.bottom = 50
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
