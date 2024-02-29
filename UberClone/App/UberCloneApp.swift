//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Георгий Борисов on 25.02.2024.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
