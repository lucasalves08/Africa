//
//  InsetMapView.swift
//  Africa
//
//  Created by Lucas Santos on 23/01/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
        span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    )
    
    var body: some View {
        Map(position: $cameraPosition)
            .overlay (
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10.0)
                    .padding(.horizontal, 14.0)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 8.0))
                    )
                }
                .padding(12.0)
                , alignment: .topTrailing
            )
            .frame(height: 256.0)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
        .padding()
}
