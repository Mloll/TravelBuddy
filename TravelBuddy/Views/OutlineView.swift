import SwiftUI
import SwiftData

struct OutlineView : View {
    @Query var folders : [Folder]
    
    var body: some View {
        
        return Text("\(folders.count)")
    }
    
}
