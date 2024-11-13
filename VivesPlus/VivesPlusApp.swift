//
//  VivesPlusApp.swift
//  VivesPlus
//
//  Created by Mano Bouttelisier on 12/11/2024.
//

import SwiftUI

@main
struct VivesPlusApp: App {
    var body: some Scene {
        @State var datastore = UurroosterDataStore()
        WindowGroup {
            ContentView()
                .environment(datastore)
        }
    }
}
