//
//  TrafficLights.swift
//  trafficLightSwift
//
//  Created by Кирилл Файфер on 15.10.2020.
//

import SwiftUI

struct TrafficLights: View {
    @State private var currentColor = "red"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack {
            Color(.black)
               .ignoresSafeArea()
            VStack {
                TrafficColor(opacity: redLightState, color: .red)
                TrafficColor(opacity: yellowLightState, color: .yellow)
                TrafficColor(opacity: greenLightState, color: .green)
                
                Spacer()
                
                ButtonView(buttonTitle: buttonTitle, action: { trafficAction() })
                .padding()
            }
        }
    }
    
    private func trafficAction() {
        buttonTitle = "Next"
        
        switch currentColor {
        case "red":
            greenLightState = 0.3
            redLightState = 1
            currentColor = "yellow"
        case "yellow":
            redLightState = 0.3
            yellowLightState = 1
            currentColor = "green"
        default:
            yellowLightState = 0.3
            greenLightState = 1
            currentColor = "red"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            TrafficLights()
    }
}
