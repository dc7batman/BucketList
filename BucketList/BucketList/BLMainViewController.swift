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
        setUpNavigationBar()
        
        if UserDefaults.standard.bool(forKey: kBLUserDefaults_SetupPassCode) {
            // Enter passcode
            showPasscodeView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showPasscodeView() -> Void {
        let passcodeViewController = BLPasscodeViewController()
        passcodeViewController.title = "Enter Passcode"
        let passcodeNavController:UINavigationController = UINavigationController.init(rootViewController: passcodeViewController)
        self.present(passcodeNavController, animated: false, completion: nil)
    }
    
    func setUpNavigationBar() -> Void {
        let navBar = self.navigationController?.navigationBar
        navBar?.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navBar?.shadowImage = UIImage()
        navBar?.backgroundColor = UIColor.clear
        navBar?.barStyle = UIBarStyle.black
        navBar?.tintColor = UIColor.white
    }
    
    @IBAction func getStarted(_ sender: AnyObject) {
        let passcodeViewController = BLPasscodeViewController()
        passcodeViewController.title = "Set Passcode"
        self.navigationController?.pushViewController(passcodeViewController, animated: true)
    }
}
