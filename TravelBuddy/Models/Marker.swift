import Foundation
import SwiftData

@Model
final class Marker {
    var name : String
    var folder : Folder?
    var trip : Trip?
    
    init(name: String) {
        self.name = name
    }
    
}
