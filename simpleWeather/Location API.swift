//
//  Location API.swift
//  simpleWeather
//
//  Created by Warren Hansen on 1/30/17.
//  Copyright © 2017 Warren Hansen. All rights reserved.
//

import Foundation

class CurrentLocation {
    
    static let sharedInstance = CurrentLocation()
    
    var cityInput = ""
    
    var last = ""
    
    var first = ""
    
    func parseCurrentLocation(input: String)-> String {
        //  let location = cityInput.text!
        let location = input
        let str = location
        let split = str.characters.split(separator: " ")
        let size = split.count
        var last = ""
        var first = ""
        
        switch size {
            
        // no text entered, use gps to find location
        case 0:
            return  "Please Enter a City and State"
        //  city , state -- Venice, CA
        case 2:
            last = String(split.suffix(1).joined(separator: [" "]))
            first = String(split.prefix(upTo: 1).joined(separator: [" "]))
            return first + last
            
        // city city, state -- San Fransisco, CA
        case 3:
            last = String(split.suffix(1).joined(separator: [" "]))
            first = String(split.prefix(upTo: 2).joined(separator: [" "]))
            // must join first 2 city names by _ underscore
            //currentWeather.updateUrl(last: currentLocation.last, first: currentLocation.first.replacingOccurrences(of: " ", with: "_"))
            return first.replacingOccurrences(of: " ", with: "_") + last
            //  last    = String(split.suffix(1).joined(separator: [" "]))
            //first = String(split.prefix(upTo: 2).joined(separator: [" "]))
            //url = NSURL(string: "https://api.wunderground.com/api/f6373e95fa296c84/conditions/q/" + last + "/" + first.replacingOccurrences(of: " ", with: "_") + ".json")
            //forcastURL = NSURL(string: "https://api.wunderground.com/api/f6373e95fa296c84/forecast10day/q/" + last + "/" + first.replacingOccurrences(of: " ", with: "_") + ".json")
            
        // only 1 word entered, need more info
        default:
            //  first = String(split.prefix(upTo: 1).joined(separator: [" "]))
            //  url = NSURL(string: "https://api.wunderground.com/api/f6373e95fa296c84/conditions/q/" + first + ".json")
            //  forcastURL = NSURL(string: "https://api.wunderground.com/api/f6373e95fa296c84/forecast10day/q/" + first + ".json")
            //  print("ERROR: Please include a state or country")
            return "Please include a state or country"
        }
}


    
    
}
