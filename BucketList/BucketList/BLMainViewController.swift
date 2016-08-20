//
//  BLMainViewController.swift
//  BucketList
//
//  Created by Mohan on 20/08/16.
//  Copyright © 2016 bucketlistapp. All rights reserved.
//

import UIKit

let kBLUserDefaults_SetupPassCode = "in.bucketlist.setupPasscode"


class BLMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if UserDefaults.standard.bool(forKey: kBLUserDefaults_SetupPassCode) {
            // passcode already set up
        } else {
            // Show passcode screen
            showPasscodeView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPasscodeView() -> Void {
        let passcodeViewController = BLPasscodeViewController()
        passcodeViewController.title = "Setup Passcode"
        let passcodeNavController:UINavigationController = UINavigationController.init(rootViewController: passcodeViewController)
        self.present(passcodeNavController, animated: false, completion: nil)
    }
}
