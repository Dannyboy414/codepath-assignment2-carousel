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
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = uiScrollView.contentOffset.y
        let bottom: CGFloat = scrollView.contentSize.height - scrollView.frame.height
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
    
        // transform = starting position * (1 - percent)
        var transform1 = CGAffineTransformMakeScale(1, 1)
        let radiansOfRotation1 = degreesToRadians(-7.0 * (1 - percent))
        transform1 = CGAffineTransformRotate(transform1, radiansOfRotation1)
        let xTransform1 = -35 * (1 - percent)
        let yTransform1 = -300 * (1 - percent)
        transform1 = CGAffineTransformTranslate(transform1, xTransform1, yTransform1)
        
        let scale2 = 0.9 * (1 - percent) + 1.0
        var transform2 = CGAffineTransformMakeScale(scale2, scale2)
        let radiansOfRotation2 = degreesToRadians(-8.0 * (1 - percent))
        transform2 = CGAffineTransformRotate(transform2, radiansOfRotation2)
        let xTransform2 = 40 * (1 - percent)
        let yTransform2 = -130 * (1 - percent)
        transform2 = CGAffineTransformTranslate(transform2, xTransform2, yTransform2)
        
        let scale3 = 0.7 * (1 - percent) + 1.0
        var transform3 = CGAffineTransformMakeScale(scale3, scale3)
        let radiansOfRotation3 = degreesToRadians(8.0 * (1 - percent))
        transform3 = CGAffineTransformRotate(transform3, radiansOfRotation3)
        let xTransform3 = -30 * (1 - percent)
        let yTransform3 = -250 * (1 - percent)
        transform3 = CGAffineTransformTranslate(transform3, xTransform3, yTransform3)
        
        let scale4 = 0.9 * (1 - percent) + 1.0
        var transform4 = CGAffineTransformMakeScale(scale4, scale4)
        let radiansOfRotation4 = degreesToRadians(8.0 * (1 - percent))
        transform4 = CGAffineTransformRotate(transform4, radiansOfRotation4)
        let xTransform4 = 20 * (1 - percent)
        let yTransform4 = -210 * (1 - percent)
        transform4 = CGAffineTransformTranslate(transform4, xTransform4, yTransform4)
        
        let scale5 = 0.9 * (1 - percent) + 1.0
        var transform5 = CGAffineTransformMakeScale(scale5, scale5)
        let radiansOfRotation5 = degreesToRadians(8.0 * (1 - percent))
        transform5 = CGAffineTransformRotate(transform5, radiansOfRotation5)
        let xTransform5 = -100 * (1 - percent)
        let yTransform5 = -250 * (1 - percent)
        transform5 = CGAffineTransformTranslate(transform5, xTransform5, yTransform5)
        
        let scale6 = 0.6 * (1 - percent) + 1.0
        var transform6 = CGAffineTransformMakeScale(scale6, scale6)
        let radiansOfRotation6 = degreesToRadians(-8.0 * (1 - percent))
        transform6 = CGAffineTransformRotate(transform6, radiansOfRotation6)
        let xTransform6 = -16 * (1 - percent)
        let yTransform6 = -310 * (1 - percent)
        transform6 = CGAffineTransformTranslate(transform6, xTransform6, yTransform6)


        image1Fingers.transform = transform1
        image2Deer.transform = transform2
        image3Fish.transform = transform3
        image4Lake.transform = transform4
        image5House.transform = transform5
        image6Dog.transform = transform6
    }
    
    func degreesToRadians(degrees: CGFloat) -> CGFloat {
        return degrees * CGFloat(M_PI / 180.0)
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
