//
//  Item.swift
//  TravelBuddy
//
//  Created by Viktor Strate Kløvedal on 28/02/2025.
//

import Foundation
import SwiftData

@Model
final class Folder {
    var name : String
    
    var parentTrip : Trip?
    var parentFolder : Folder?
    @Relationship(deleteRule: .cascade, inverse: \Folder.parentFolder)
    var subFolder: [Folder]? = nil 
    @Relationship(deleteRule: .cascade, inverse: \Marker.folder)
    var markers = [Marker] ()
    
    
    init(name: String, trip: Trip) {
        self.name = name
        self.parentTrip = trip
    }
    
}
