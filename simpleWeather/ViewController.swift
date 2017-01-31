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
    2    Get weather for city/state for next 10 day
            Do this in weatherAPI class/ file
    3    Display 10 day forecast in UI
        Call weatherAPI / Location API
    4   Show progress bar getting weather

    Eliminate GPS, Exact date forecast
*/

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var cityInput: UISearchBar!
    
    @IBOutlet weak var weatherDisplay: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set default Text
        weatherDisplay.text = "Please Enter a city to get a Weather Forecast \r\n\r\nWeather Forecast for your Location \r\n\r\nDate           Hi Low      Conditions \r\n1/23/2017      40/60       Clear \r\n1/23/2017      40/60       Clear \r\n1/23/2017      40/60       Clear\r\n1/23/2017      40/60       Clear"
        
        cityInput.text = "Venice CA"
    }

    @IBAction func searchAction(_ sender: Any) {
        
        weatherDisplay.text = "Launching Search..."
        
        weatherDisplay.text =  CurrentLocation.sharedInstance.parseCurrentLocation(input: cityInput.text!)
        
        // call weather api and print results
        GetWeather().getForecast()
    }



}

