import SwiftUI
import SwiftData

struct OutlineView : View {
    @Environment(\.modelContext) private var modelContext
    @Query var trips : [Trip]
    
    var body: some View {
        List {
            ForEach(trips) { trip in
                Section(trip.name) {
                    Text("Trip content")
                }
            }
        }.contextMenu {
            Button("New Trip") {
                print("Make a new trip")
                modelContext.insert(Trip(name: "New Trip"))
            }
        }
    }
    
}
