//
//  ViewController.swift
//  Hypthese_2
//
//  Created by Lars De Winter on 11/12/2017.
//  Copyright © 2017 Lars De Winter. All rights reserved.
//

import UIKit

class CanditateInfoViewController: UIViewController {

    var canditateInfo:[Any] = []
    
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var residenceLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "\(canditateInfo[1] as! Int) jaar oud"
        nameLabel.text = canditateInfo[0] as? String
        residenceLabel.text = canditateInfo[2] as? String
        schoolLabel.text = canditateInfo[3] as? String
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

