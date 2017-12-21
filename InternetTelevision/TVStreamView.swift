//
//  TVStreamView.swift
//  InternetTV App
//
//  Created by Hasani on 10/17/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//


import AVKit
import AVFoundation


//Stream class
class TVStreamView: AVPlayerViewController {
    
    private var channelURL = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.player = AVPlayer(url: URL(string: channelURL)!)
        self.player?.volume = Channels.volume
        self.player?.play()
        
        print(self.player!)
        
        print(self.isReadyForDisplay);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Select channel URLS
    public func setChannelURL(_ url: String){
        channelURL = url
        print("CHANNEL URL SETUP, Awesome!!!")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        self.player?.pause()
        
    }
    
}
