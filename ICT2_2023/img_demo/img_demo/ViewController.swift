//
//  ViewController.swift
//  img_demo
//
//  Created by MAC on 3/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimg: UIImageView!
    var myimages:[AnyObject] = [UIImage(named: "img1.jpeg"),UIImage(named: "img2.jpeg"),UIImage(named: "img3.jpeg"),UIImage(named: "img4.jpeg")] as [AnyObject]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myimg.image=UIImage(named: "img1.jpeg")
        self.myimg.animationImages = myimages as AnyObject as! [UIImage]
        self.myimg.animationDuration = 0.9
        self.myimg.animationRepeatCount = 10
        self.myimg.startAnimating()
        
    }


}

