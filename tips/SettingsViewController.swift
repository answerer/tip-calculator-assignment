//
//  SettingsViewController.swift
//  tips
//
//  Created by Nguyen Tan Dat on 6/2/16.
//  Copyright © 2016 Nguyen Tan Dat. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var tipSegment: UISegmentedControl!
    @IBAction func onTap(sender: AnyObject) {
        let settings = NSUserDefaults.standardUserDefaults()
        settings.setInteger(tipSegment.selectedSegmentIndex, forKey: "default_tip_percentage")
        settings.synchronize()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let settings = NSUserDefaults.standardUserDefaults()
        tipSegment.selectedSegmentIndex = settings.integerForKey("default_tip_percentage")
        
    }
}
