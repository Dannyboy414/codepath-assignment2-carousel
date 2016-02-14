//
//  CarouselViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/12/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class CarouselViewController: UIViewController {
    
    @IBOutlet weak var uiScrollView: UIScrollView!
    @IBOutlet weak var settingsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiScrollView.contentSize = CGSize(width: 320, height: 1564)
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
