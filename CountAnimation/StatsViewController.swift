//
//  ViewController.swift
//  CountAnimation
//
//  Created by Daniya on 13/04/2019.
//  Copyright © 2019 nurios. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let statsStackView = StatsStackView(frame: view.frame)
        view.addSubview(statsStackView)
    }

}

