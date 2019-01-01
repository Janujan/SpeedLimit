//
//  InterfaceController.swift
//  SpeedLimit WatchKit Extension
//
//  Created by Janujan Selva on 2018-12-31.
//  Copyright © 2018 Janujan Selva. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet var currentSpeedLabel: WKInterfaceLabel!
    @IBOutlet var currentSpeed: WKInterfaceLabel!
    @IBOutlet var speedLimitLabel: WKInterfaceLabel!
    @IBOutlet var speedLimit: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let currSpeed = 100
        let spdLimit = 70
        // Configure interface objects here.
        currentSpeed.setText("\(currSpeed) km/hr")
        speedLimit.setText("\(spdLimit) km/hr")
        
        if((currSpeed - spdLimit) >= 10)
        {
            currentSpeed.setTextColor(.red)
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
