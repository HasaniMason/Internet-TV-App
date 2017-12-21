//
//  FirstViewController.swift
//  InternetTV App
//
//  Created by Hasani on 10/17/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//

import UIKit

class StationController: UIViewController
{
    @IBOutlet var scrollView: UIScrollView!
    
    //Variables for station page
    
    private let button_height = 40
    private let offset = 5
    private var height_total = 0
    private var y = 7.0
    private var number_b = Channels.tv_channels.count
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "linear.gif")!)
    
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editButtonPressed(sender:)))
        
        self.loadButtons()
        
        
    }
    
    //make animation appear
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        //get channels
        number_b = Channels.tv_channels.count
        
        self.loadButtons()
    }
    
    //load channels into the buttons links
    private func loadButtons()
    {
        let subViews = self.scrollView.subviews
        
        for subview in subViews
        {
            subview.removeFromSuperview()
        }
        
        height_total = number_b * (button_height + offset)
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: CGFloat(height_total))
        
        for channel in Channels.tv_channels
        {
            let button = UIButton(type: UIButtonType.roundedRect)
            
            // set button values
            button.setTitle(channel.key, for: UIControlState.normal)
            button.addTarget(self, action: #selector(buttonPushed(sender:)), for: UIControlEvents.touchUpInside)
            
            //background color
            button.backgroundColor = UIColor.black
            
            //tint
            button.tintColor = UIColor.white
            
            //set frame
            let buttonFrame = CGRect(x:  CGFloat(20.0), y: CGFloat(y), width: self.scrollView.frame.size.width - 45.0,
                                     height: CGFloat(button_height))
            button.frame = buttonFrame
            
            scrollView.addSubview(button)
            
            y += Double(button_height + offset)
        }
        
        y = 7.0
    }
    
    //EventHandler for button(s)
    public func buttonPushed(sender : UIButton )
    {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        if let tvStreamView = storyboard.instantiateViewController(withIdentifier: "TVPlayer") as? TVStreamView
        {
            tvStreamView.setChannelURL( Channels.tv_channels[(sender.titleLabel?.text)!]! )
            self.present(tvStreamView, animated: true, completion: nil)
        }
    }
    
    //function for when edit button is pressed
    public func editButtonPressed(sender : UIButton )
    {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        if let modificationView = storyboard.instantiateViewController(withIdentifier: "ModificationView") as? ModifyController
        {
            self.navigationController?.pushViewController(modificationView, animated: true)
        }
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

