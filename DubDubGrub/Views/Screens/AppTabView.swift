//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/26/22.
//

import SwiftUI

struct AppTabView: View {
    
    
    @StateObject var locationManager = LocationManager()
    var body: some View {
        TabView{
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "location")
                }
            
            NavigationView {
                ProfileView()
            }
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .accentColor(.brandPrimary)
        .environmentObject(locationManager)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
