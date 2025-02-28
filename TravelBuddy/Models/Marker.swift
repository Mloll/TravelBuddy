import Foundation
import SwiftData

@Model
final class Marker {
    var markerName : String
    var folder : Folder?
    var trip : Trip?
    
    init(markerName: String) {
        self.markerName = markerName
    }
    
}
