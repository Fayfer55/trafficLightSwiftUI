//
//  TrafficLights.swift
//  trafficLightSwift
//
//  Created by Кирилл Файфер on 15.10.2020.
//

import SwiftUI

struct TrafficLights: View {
    @State var traffic = ButtonView()
    
    @State var red = TrafficColor(color: .red)
    @State var yellow = TrafficColor(color: .yellow)
    @State var green = TrafficColor(color: .green)
    
    @State private var currentColor = "red"
    
    
    var body: some View {
        ZStack {
            Color(.black)
               .ignoresSafeArea()
            VStack {
                red
                yellow
                green
                
                Spacer()
                
                Button(action: { trafficAction() }) {
                    traffic
                }
                .padding()
            }
        }
    }
    
    private func trafficAction() {
        traffic.buttonText = "Next"
        
        switch currentColor {
        case "red":
            green.contrastNumber = 0.3
            red.contrastNumber = 1.0
            currentColor = "yellow"
        case "yellow":
            red.contrastNumber = 0.3
            yellow.contrastNumber = 1
            currentColor = "green"
        default:
            yellow.contrastNumber = 0.3
            green.contrastNumber = 1
            currentColor = "red"
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            TrafficLights()
    }
}
