//
//  ConfigController.swift
//  InternetTV App
//
//  Created by Hasani on 10/17/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//


import UIKit

//Configuration Class
class ConfigController: UIViewController {
    
    @IBOutlet weak var channelURLField: UITextField!
    @IBOutlet weak var channelNameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cool.jpg")!)

        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Buttons for channels
    @IBAction func setButtonClicked(_ sender: UIButton) {
        
        
        if channelNameField.text! == "" || channelURLField.text! == "" {
            return
        }
            
            
        Channels.tv_channels[ channelNameField.text! ] = channelURLField.text!
        
        
        //
        channelURLField.text = ""
        channelNameField.text = ""
    }
    //Slider for volume
    @IBAction func volumeChanged(_ sender: UISlider) {
        Channels.volume = sender.value
    }
    
    
}

