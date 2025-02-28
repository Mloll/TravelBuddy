//
//  Item.swift
//  TravelBuddy
//
//  Created by Viktor Strate Kløvedal on 28/02/2025.
//

import Foundation
import SwiftData

@Model
final class Trip {
    var name : String
    
    @Relationship(deleteRule: .cascade, inverse: \Folder.parentFolder)
    var folders = [Folder] ()
    
    @Relationship(deleteRule: .cascade, inverse: \Marker.trip)
    var markers = [Marker] ()
    
    
    init(name: String) {
        self.name = name
    }
    
}
