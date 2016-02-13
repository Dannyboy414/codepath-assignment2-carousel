//
//  IntroductionViewController.swift
//  Carousel
//
//  Created by Daniel Kim on 2/11/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var uiScrollView: UIScrollView!
    @IBOutlet weak var image1Fingers: UIImageView!
    @IBOutlet weak var image2Deer: UIImageView!
    @IBOutlet weak var image3Fish: UIImageView!
    @IBOutlet weak var image4Lake: UIImageView!
    @IBOutlet weak var image5House: UIImageView!
    @IBOutlet weak var image6Dog: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiScrollView.delegate = self
        self.uiScrollView.contentSize = CGSize(width: 320, height: 1136)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Boundaries
    func scrollViewDidScroll(uiScrollView: UIScrollView) {
        let offset = uiScrollView.contentOffset.y
        let bottom: CGFloat = 568
        let percent = offset / bottom

        if percent >= 1 {
            image1Fingers.transform = CGAffineTransformIdentity
            image2Deer.transform = CGAffineTransformIdentity
            image3Fish.transform = CGAffineTransformIdentity
            image4Lake.transform = CGAffineTransformIdentity
            image5House.transform = CGAffineTransformIdentity
            image6Dog.transform = CGAffineTransformIdentity
        return
    }
    
    var transform1 = CGAffineTransformMakeScale(1 - percent, 1 - percent)
    transform1 = CGAffineTransformRotate(transform1, CGFloat((-7 - (20 * Double(percent))) * M_PI / 180))
    transform1 = CGAffineTransformTranslate(transform1, -68 + (90 * percent), -290 + (200 * percent))
    
    var transform2 = CGAffineTransformMakeScale(1.9 - percent, 1.9 - percent)
    transform2 = CGAffineTransformRotate(transform2, CGFloat((-10 - (-20 * Double(percent))) * M_PI / 180))
    transform2 = CGAffineTransformTranslate(transform2, 40 + (-70 * percent), -120 + (150 * percent))
    
    var transform3 = CGAffineTransformMakeScale(1.9 - percent, 1.9 - percent)
    transform3 = CGAffineTransformRotate(transform3, CGFloat((13 - (15 * Double(percent))) * M_PI / 180))
    transform3 = CGAffineTransformTranslate(transform3, -50 + (25 * percent), -220 + (150 * percent))
    
    var transform4 = CGAffineTransformMakeScale(1.9 - percent / 2, 1.9 - percent / 2)
    transform4 = CGAffineTransformRotate(transform4, CGFloat((+15 - (-15 * Double(percent))) * M_PI / 180))
    transform4 = CGAffineTransformTranslate(transform4, -18 + (-45 * percent), -205 + (240 * percent))
    
    var transform5 = CGAffineTransformMakeScale(1.9 - percent / 2, 1.9 - percent / 2)
    transform5 = CGAffineTransformRotate(transform5, CGFloat((12 - (15 * Double(percent))) * M_PI / 180))
    transform5 = CGAffineTransformTranslate(transform5, -135 + (95 * percent), -256 + (240 * percent))
    
    var transform6 = CGAffineTransformMakeScale(1.8 - percent / 2, 1.8 - percent / 2)
    transform6 = CGAffineTransformRotate(transform6, CGFloat((-13 - (-15 * Double(percent))) * M_PI / 180))
    transform6 = CGAffineTransformTranslate(transform6, 0 + (-35 * percent), -285 + (250 * percent))

    image1Fingers.transform = transform1
    image2Deer.transform = transform2
    image3Fish.transform = transform3
    image4Lake.transform = transform4
    image5House.transform = transform5
    image6Dog.transform = transform6
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
