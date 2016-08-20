//
//  BLPasscodeViewController.swift
//  BucketList
//
//  Created by Mohan on 20/08/16.
//  Copyright © 2016 bucketlistapp. All rights reserved.
//

import UIKit

class BLPasscodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpNavigationBar() -> Void {
        let navBar = self.navigationController?.navigationBar
        navBar?.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navBar?.shadowImage = UIImage()
        navBar?.backgroundColor = UIColor.clear
    }
}
