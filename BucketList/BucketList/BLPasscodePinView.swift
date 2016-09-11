//
//  BLPasscodePinView.swift
//  BucketList
//
//  Created by Mohan on 06/09/16.
//  Copyright © 2016 bucketlistapp. All rights reserved.
//

import UIKit

class BLPasscodePinView: UIView {
    
    var button : UIButton?;
    var label : UILabel?;
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createSubViews() -> Void {
        
        // Add subviews
        self.button = UIButton.init()
        self.button?.layer.cornerRadius = self.frame.size.width/2.0
        self.button?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.button!)
        
        self.label = UILabel.init()
        self.label?.translatesAutoresizingMaskIntoConstraints = false
        self.label?.backgroundColor = UIColor.clear
        self.label?.font = UIFont.init(name: "", size: 14.0)
        self.label?.textAlignment = NSTextAlignment.center
        self.addSubview(self.label!)
        
        // Setup constraints
        let viewsInfo : [String:AnyObject] = ["button":self.button!, "label":self.label!]
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[button]|",
                                                           options: NSLayoutFormatOptions.alignmentMask,
                                                           metrics: nil,
                                                           views: viewsInfo))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[button]|",
                                                           options: NSLayoutFormatOptions.alignmentMask,
                                                           metrics: nil,
                                                           views: viewsInfo))
        
        self.addConstraint(NSLayoutConstraint.init(item: self.label!,
                                                   attribute: NSLayoutAttribute.centerX,
                                                   relatedBy: NSLayoutRelation.equal,
                                                   toItem: self,
                                                   attribute: NSLayoutAttribute.centerX,
                                                   multiplier: 1.0,
                                                   constant: 0.0))
        self.addConstraint(NSLayoutConstraint.init(item: self.label!,
                                                   attribute: NSLayoutAttribute.centerY,
                                                   relatedBy: NSLayoutRelation.equal,
                                                   toItem: self,
                                                   attribute: NSLayoutAttribute.centerY,
                                                   multiplier: 1.0,
                                                   constant: 0.0))
    }
}
