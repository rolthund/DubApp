//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/29/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - MapView Errors
    static let unableToGetLocations = AlertItem(title: Text("Location Error"),
                                             message: Text("Unable to retrieve locations at this time. \nPlease try again."),
                                             dismissButton: .default(Text("Ok")))
    
    static let locationRestricted = AlertItem(title: Text("Location Restricted"),
                                             message: Text("Your location is restricted"),
                                             dismissButton: .default(Text("Ok")))
    
    static let locationDenied = AlertItem(title: Text("Location Denied"),
                                             message: Text("App does not have permission to access your location"),
                                             dismissButton: .default(Text("Ok")))
    
    static let locationDisabled = AlertItem(title: Text("Location Disabled"),
                                             message: Text("Your phone's location services are disabled."),
                                             dismissButton: .default(Text("Ok")))
}
