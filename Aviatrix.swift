//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author = ""
    var running = false
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var targetLocation = ""
    
    
    init (authorName : String) {
        author = authorName
    }
    
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
        distanceTraveled += data.knownDistances[location]![targetLocation]!
        return location
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
        
    }
    
    func knownDestinations() -> [String] {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
