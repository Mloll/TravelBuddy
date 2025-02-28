//
//  ContentView.swift
//  TravelBuddy
//
//  Created by Viktor Strate Kløvedal on 28/02/2025.
//

import SwiftUI
import SwiftData

struct AppView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            OutlineView()
        } content: {
            MapView()
        } detail: {
            DetailsView()
        }
    }
}

#Preview {
    AppView()
        .modelContainer(for: Item.self, inMemory: true)
}
