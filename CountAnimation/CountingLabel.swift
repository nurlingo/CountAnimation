//
//  CountingLabel.swift
//  CountAnimation
//
//  Created by Daniya on 13/04/2019.
//  Copyright © 2019 nurios. All rights reserved.
//

import UIKit

class CountingLabel: UILabel {
    
    fileprivate let startValue: Double
    fileprivate let endValue: Double
    fileprivate let animationDuration: Double
    
    fileprivate let animationStartDate = Date()
    fileprivate var displayLink: CADisplayLink?
    
    init(startValue: Double, endValue: Double, animationDuration: Double) {
        self.startValue = startValue
        self.endValue = endValue
        self.animationDuration = animationDuration
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 5
        
        self.text = "\(startValue)"
        self.textAlignment = .center
        self.font = UIFont.monospacedDigitSystemFont(ofSize: 20, weight: .medium)
        
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .default)
        
    }
    
    @objc func handleUpdate(sender: CADisplayLink) {
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)

        if elapsedTime > animationDuration {
            self.text = "\(Int(endValue))"
            sender.remove(from: .main, forMode: .default)
        } else {
            let percentage = elapsedTime / animationDuration
            let value = percentage * (endValue - startValue) + (startValue == 0 ? 0 : startValue)
            self.text = "\(Int(value))"
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
