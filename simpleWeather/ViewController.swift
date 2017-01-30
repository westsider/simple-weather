//
//  ViewController.swift
//  simpleWeather
//
//  Created by Warren Hansen on 1/30/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

/*
    Current Weather Swift Needs
 
    Build UI with State / City + Scrollable display
 
    Weather Forecast for your Locattion
    Date               Hi Low    Conditions <— Scrollable
    1/23/2017      40/60        Clear
 
    <— Text Entry —>    Los Angeles CA  ** Update Button**
 
    1    Parse City/ State
            Do this in Location Class/file
    2    Get weather for city/state for next 10 day
            Do this in weatherAPI class/ file
    3    Display 10 day forecast in UI
        Call weatherAPI / Location API
    4   Show progress bar getting weather

    Eliminate GPS, Exact date forecast
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

