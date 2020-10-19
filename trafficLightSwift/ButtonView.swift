//
//  ButtonView.swift
//  trafficLightSwift
//
//  Created by Кирилл Файфер on 15.10.2020.
//

import SwiftUI

struct ButtonView: View {
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Color(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 23))
                    .frame(width: 170, height: 70, alignment: .center)
                    .overlay(RoundedRectangle(
                                cornerRadius: 23)
                                .stroke(lineWidth: 4)
                                .foregroundColor(.white)
                    )
                Text(buttonTitle)
                    .font(.title).bold()
                    .accentColor(.white)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Start", action: {})
    }
}
