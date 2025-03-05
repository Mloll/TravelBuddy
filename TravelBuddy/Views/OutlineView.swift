import SwiftUI
import SwiftData

struct OutlineView : View {
    @Environment(\.modelContext) private var modelContext
    @Query var trips : [Trip]
    
    var body: some View {
        List {
            ForEach(trips) { trip in
                tripView(trip)
            }
        }.contextMenu {
            Button("New Trip") {
                print("Make a new trip")
                modelContext.insert(Trip(name: "New Trip"))
            }
        }.listStyle(.sidebar)
    }
    
    func tripView(_ trip: Trip) -> some View {
        Section(trip.name) {
            ForEach(trip.folders) { folder in
                folderView(folder)
            }
        }.contextMenu {
            Button("New folder"){
                print("Make new folder in", trip.name)
                modelContext.insert(Folder(name: "FolderName", trip:trip))
            }
        }
    }
    
    func folderView(_ folder: Folder) -> some View {
        DisclosureGroup{
            VStack {
                ForEach(folder.markers) { marker in
                    Text(marker.name)
                }
            }
        } label: {
            Text(folder.name).contextMenu{
                Button("New Marker"){
                    print("make a marker in folder", folder.name)
                    modelContext.insert(Marker(name: "MarkerName"))
                }
            }
        }
    }
}
