//
//  ViewController.swift
//  ZText
//
//  Created by Thuong Nguyen on 05/21/2016.
//  Copyright (c) 2016 Thuong Nguyen. All rights reserved.
//

import UIKit
import ZText

class ViewController: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ZText.boldFont         = UIFont(name: "GillSans-Bold", size: 42)!
        ZText.italicFont       = UIFont(name: "GillSans-Italic", size: 18)!
        ZText.defaultAlignment = NSTextAlignment.center
        
        lbTitle.attributedText = ZText.begin()
            .addBoldText("Z", color: UIColor.white)
            .addBoldText("Text", color: UIColor.yellow)
            .end()
        
        lbDescription.attributedText = ZText.begin()
            .addItalicText("'Cause ", color: UIColor.yellow)
            .addItalicText("NSAttributedString ", color: UIColor.white)
            .addItalicText("is ", color: UIColor.yellow)
            .addItalicText("damn ", color: UIColor.white)
            .addItalicText("sexy ", color: UIColor.yellow)
            .end()
    }
}

