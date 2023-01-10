//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/25/22.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
