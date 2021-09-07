//
//  TravelApp.swift
//  Travel
//
//  Created by Luuk Kenselaar on 05/09/2021.
//

import SwiftUI

@main
struct TravelApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Label("Discover", systemImage: "airplane.circle.fill")
                }

                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Label("Locations", systemImage: "star.fill")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Label("Tips", systemImage: "list.bullet")

                }
            }
            .environmentObject(locations)
        }
    }
}
