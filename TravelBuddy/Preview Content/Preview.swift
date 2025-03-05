import SwiftData

struct Preview {
    @MainActor
    static var modelContainer: ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        
        let container = try! ModelContainer(
            for: Schema(versionedSchema: TravelBuddyVersionedSchema.self),
            configurations: config
        )
        
        for trip in Trip.sampleTrips {
            container.mainContext.insert(trip)
        }
        
        return container
    }
}
