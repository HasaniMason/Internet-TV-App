//
//  SecondViewController.swift
//  InternetTV App
//
//  Created by Hasani on 10/15/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//

import UIKit

class ModifyController: UIViewController
{
    @IBOutlet weak var scrollView: UIScrollView!
    
    private var y = 8.0
    private var num_buttons = Channels.tv_channels.count
    private let buttonHeight = 45
    private let offset = 5
    private var totalHeight = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        self.loadButtons()
    }
    
    //Appearing function
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        num_buttons = Channels.tv_channels.count
        
        self.loadButtons()
    }
    
    //load buttons function
    private func loadButtons()
    {
        let subViews = self.scrollView.subviews
        
        for subview in subViews
        {
            subview.removeFromSuperview()
        }
        
        totalHeight = num_buttons * (buttonHeight + offset)
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: CGFloat(totalHeight))
        
        //channels loop
        for channel in Channels.tv_channels
        {
            let button = UIButton(type: UIButtonType.roundedRect)
            
            button.setTitle(channel.key, for: UIControlState.normal)
            
            button.addTarget(self, action: #selector(buttonPushed(sender:)), for: UIControlEvents.touchUpInside)
            
            button.backgroundColor = UIColor.brown
            
            button.tintColor = UIColor.white
            
            let buttonFrame = CGRect(x:  CGFloat(20.0), y: CGFloat(y), width: self.scrollView.frame.size.width - 40.0,
                                     height: CGFloat(buttonHeight))
            button.frame = buttonFrame
            
            scrollView.addSubview(button)
            
            y += Double(buttonHeight + offset)
        }
        
        y = 5.0
    }
    
    //button pushed function
    public func buttonPushed(sender : UIButton )
    {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        if let editChannelView = storyboard.instantiateViewController(withIdentifier: "EditChannelView") as? EditController
        {
            editChannelView.prepareForModification((sender.titleLabel?.text)!)
            
            self.navigationController?.pushViewController(editChannelView, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
