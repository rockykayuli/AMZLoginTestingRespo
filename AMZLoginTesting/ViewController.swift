//
//  ViewController.swift
//  AMZLoginTesting
//
//  Created by Linlin on 8/7/15.
//  Copyright (c) 2015 Rocky. All rights reserved.
//

import UIKit

class AMZNAuthorizationDelegate: NSObject, AIAuthenticationDelegate {
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginBtnOnClick(sender: AnyObject) {
        
        var requestScopes: [AnyObject] = NSArray(contentsOfFile: "profile") as! [AnyObject]
        var delegate: AMZNAuthorizeUserDelegate = AMZNAuthorizeUserDelegate(parentController: self)
        AIMobileLib.authorizeUserForScopes(requestScopes, delegate: delegate)

        
    }

}

