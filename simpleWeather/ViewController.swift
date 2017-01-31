//
//  ViewController.swift
//  simpleWeather
//
//  Created by Warren Hansen on 1/30/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

/*
    Current Weather Swift Needs
 
    * Build UI with State / City + Scrollable display
 
    Weather Forecast for your Locattion
    Date               Hi Low    Conditions <— Scrollable
    1/23/2017      40/60        Clear
 
    <— Text Entry —>    Los Angeles CA  ** Update Button**
 
    * 1    Parse City/ State
    *        Do this in Location Class/file
    * 2    Get weather for city/state for next 10 day
    *        Do this in weatherAPI class/ file
    * 3    Display 10 day forecast in UI
      4    Show progress bar getting weather
*/

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var cityInput: UISearchBar!
    
    @IBOutlet weak var weatherDisplay: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set default Text
        weatherDisplay.text = "Please Enter a city to get a Weather Forecast"
        
        cityInput.text = "Venice CA"
    }

    @IBAction func searchAction(_ sender: Any) {
        
        weatherDisplay.text = "Launching Search..."
        
        weatherDisplay.text =  CurrentLocation.sharedInstance.parseCurrentLocation(input: cityInput.text!)
        
        // call weather api in closure that returns a string for the UI
        GetWeather().getForecast { (result: String) in
            self.weatherDisplay.text = result
        }
        
        
    }



}

