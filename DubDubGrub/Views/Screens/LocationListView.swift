//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/26/22.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations){ location in
                    NavigationLink(destination: LocationView(location: location)){
                        LocationCell(location: location)
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    

    static var previews: some View {
        LocationListView().environmentObject(LocationManager())
    }
}
