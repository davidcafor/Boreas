//
//  ContentView.swift
//  Boreas
//
//  Created by David Cardeña on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .preferredColorScheme(.dark)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
    }
}

#Preview {
    ContentView()
}
