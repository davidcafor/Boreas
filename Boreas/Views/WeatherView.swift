//
//  WeatherView.swift
//  Boreas
//
//  Created by David Cardeña on 11/12/23.
//

import SwiftUI

struct WeatherView: View {
    
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name ?? "")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .edgesIgnoringSafeArea(.bottom)
        .preferredColorScheme(.dark)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
