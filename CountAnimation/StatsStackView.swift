//
//  StatsStackView.swift
//  CountAnimation
//
//  Created by Daniya on 13/04/2019.
//  Copyright © 2019 nurios. All rights reserved.
//

import UIKit

class StatsStackView: UIStackView {
    
    let countingLabel1 = CountingLabel(startValue: 5, endValue: 1501, animationDuration: 1.5)
    let countingLabel2 = CountingLabel(startValue: 3, endValue: 91, animationDuration: 1.5)
    let countingLabel3 = CountingLabel(startValue: 0, endValue: 63, animationDuration: 1.5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addArrangedSubview(countingLabel1)
        self.addArrangedSubview(countingLabel2)
        self.addArrangedSubview(countingLabel3)
        
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 32
        
        self.layoutMargins = UIEdgeInsets(top: 32, left: 32, bottom: 32, right: 32)
        self.isLayoutMarginsRelativeArrangement = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

