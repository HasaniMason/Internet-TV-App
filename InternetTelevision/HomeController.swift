//
//  HomeViewController.swift
//  InternetTV App
//
//  Created by Hasani on 10/15/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//

import UIKit

//Controller for Home page
class HomeController: UIViewController
{
    @IBOutlet weak var slideShowView: UIImageView!
    
    private var startIMGArray = ["homeImage.png", "image1.png", "image2.png"]

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //array of  images for slideshow
        var images = [UIImage]()
        
        
        //loop for images on home screen
        for i in 0...2
            
        {
            
            let image = startIMGArray[i]
            let imagebe = UIImage(named: image)!
            images.append(imagebe)
        }
        

        
        //animate slideshow
        slideShowView.animationImages = images
        slideShowView.animationDuration = Double(images.count)*5
        slideShowView.animationRepeatCount = 0
        slideShowView.startAnimating()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

