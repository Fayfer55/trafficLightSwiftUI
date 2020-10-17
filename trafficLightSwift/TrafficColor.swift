//
//  TrafficColor.swift
//  trafficLightSwift
//
//  Created by Кирилл Файфер on 15.10.2020.
//

import SwiftUI

struct TrafficColor: View {
    var contrastNumber = 0.3
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .clipShape(Circle())
            .contrast(contrastNumber)
            .frame(width: 150, height: 150, alignment: .center)
            .overlay(Circle().stroke(lineWidth: 3).foregroundColor(.white))
    }
}

struct trafficColor_Previews: PreviewProvider {
    static var previews: some View {
        TrafficColor(color: .red)
    }
}
