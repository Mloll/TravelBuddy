import Foundation
import SwiftData

@Model
final class Marker {
    var markerName : String
    var folder : Folder?
    
    init(markerName: String) {
        self.markerName = markerName
    }
    
}
