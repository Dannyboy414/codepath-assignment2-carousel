//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/12/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var welcomeScroll: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var carouselButton: UIButton!

    // do stuff at the beginnning
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScroll.delegate = self
        pageControl.numberOfPages = 4
        
        let contentWidth = welcomeScroll.bounds.width * 4
        let contentHeight = welcomeScroll.bounds.height
        welcomeScroll.contentSize = CGSizeMake(contentWidth, contentHeight)
        
        // set center of pagecontrol
        // self.view
        // .bounds gives you (0, 0, width, height)
        // .bounds contains width
        self.pageControl.center = CGPointMake(self.view.bounds.width / 2, 510)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    
//    @IBAction func pageControlDidPage(sender: AnyObject) {
//        let xOffset = welcomeScroll.bounds.width * CGFloat(pageControl.currentPage)
//        welcomeScroll.setContentOffset(CGPointMake(xOffset,0) , animated: true)
//    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        
        // Handle "take carousel for a spin" button
        // On fourth page
        if pageControl.currentPage == 3 {
            carouselButton.hidden = false
        }
        else {
            self.carouselButton.hidden = true
        }
        
        
    }
    
    func pageControlDoesSomething() {
        
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
