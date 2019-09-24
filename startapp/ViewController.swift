//
//  ViewController.swift
//  startapp
//
//  Created by viplab on 2019/9/18.
//  Copyright © 2019 viplab. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.black
    }
        
    @IBAction func showMessage(sender: UIButton)
    {
        var arrayDict = ["🐯":"TigerV","🐰":"RabbitK","🦙":"AlpacaRj","✨":"Shine"]
        
        let selectButton = sender
        
        if let wordToLookup = selectButton.titleLabel?.text
        {
            let meaning = arrayDict[wordToLookup]
        
            let alertController = UIAlertController(title: "Meaning", message:  meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK",style:UIAlertAction.Style.default, handler:nil))
            present(alertController, animated:true, completion:nil)
        }
    }
}

