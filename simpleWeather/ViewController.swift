//
//  ViewController.swift
//  simpleWeather
//
//  Created by Warren Hansen on 1/30/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var cityInput: UISearchBar!
    
    @IBOutlet weak var weatherDisplay: UITextView!
    
    @IBOutlet weak var activityDial: UIActivityIndicatorView!
    
    let errorOne = "Please include a state or country"
    
    let errorTwo = "Please Enter a City and State or Country"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set default Text
        weatherDisplay.text = "Please Enter a city to get a Weather Forecast"
        
        cityInput.text = "Venice CA"
    }
    
    @IBAction func searchAction(_ sender: Any) {
        
        weatherDisplay.text = "Launching Search..."
        
        activityDial.startAnimating()
        
        let searchResult  =  CurrentLocation.sharedInstance.parseCurrentLocation(input: cityInput.text!)
        weatherDisplay.text = searchResult
        
        // if now parsing error call weather api in closure that returns a string for the UI
        if searchResult != errorOne && searchResult !=  errorTwo {
            
            GetWeather().getForecast { (result: String) in
                self.weatherDisplay.text = result
                self.activityDial.stopAnimating()
            }
            
        }  else {
            
            self.weatherDisplay.text = searchResult
             self.activityDial.stopAnimating()
            
        }
    }
}

