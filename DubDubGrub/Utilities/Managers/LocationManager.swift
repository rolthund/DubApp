//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/30/22.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
