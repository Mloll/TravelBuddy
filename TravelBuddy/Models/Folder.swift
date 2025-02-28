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
    var folderName : String
    var parentFolder : Folder?
    @Relationship(deleteRule: .cascade, inverse: \Folder.parentFolder)
    var subFolder = [Folder] ()
    @Relationship(deleteRule: .cascade, inverse: \Marker.folder)
    var markers = [Marker] ()
    
    
    init(folderName: String) {
        self.folderName = folderName
    }
    
}
