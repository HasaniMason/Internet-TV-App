//
//  EditController.swift
//  InternetTV App
//
//  Created by Hasani on 10/17/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//


import UIKit


//Edit Class
class EditController: UIViewController
{
    @IBOutlet weak var textFieldCallLetters: UITextField!
    @IBOutlet weak var textFieldURL: UITextField!
    
    private var callLetter = "";
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        textFieldCallLetters.text = callLetter
        textFieldURL.text = Channels.tv_channels[callLetter]
    }
    
    @IBAction func modifyButtonPressed(_ sender: UIButton)
    {
        if let urlText = textFieldURL.text
        {
            if let callText = textFieldCallLetters.text
            {
                if callText != callLetter || urlText != Channels.tv_channels[callLetter]
                {
                    Channels.tv_channels.remove(at: Channels.tv_channels.index(forKey: callLetter)!)
                    Channels.tv_channels[callText] = urlText
                    
                    textFieldURL.text = ""
                    textFieldCallLetters.text = ""
                }
            }
        }
    }
    
    public func prepareForModification(_ callLetter: String)
    {
        self.callLetter = callLetter
    }
}
