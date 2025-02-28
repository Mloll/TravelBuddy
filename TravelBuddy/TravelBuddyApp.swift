//
//  TravelBuddyApp.swift
//  TravelBuddy
//
//  Created by Viktor Strate Kløvedal on 28/02/2025.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct TravelBuddyApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: TravelBuddyMigrationPlan.self) {
            AppView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct TravelBuddyMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        TravelBuddyVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct TravelBuddyVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Trip.self,
        Folder.self,
        Marker.self,
    ]
}
