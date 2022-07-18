//
//  MotionView.swift
//  MotionSensorsExperiment
//
//  Created by Tinku István on 2022. 07. 12..
//

import SwiftUI

struct MotionView: View {
    var title: String
    var value: Double
    private var formattedValue: String {
        return String(format: "%.3f", value)
    }
    private var viewColor: UIColor {
        return value > 0 ? UIColor(red: 0/255, green: 0/255, blue: abs((255/255) * value), alpha: 0.8) : UIColor(red: abs((255/255) * value), green: 0/255, blue: 0/255, alpha: 0.8)
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .bold()
                .padding()
                .foregroundStyle(.thinMaterial)
            
            Text(formattedValue)
                .font(.title)
                .padding(.bottom)
                .foregroundStyle(.thinMaterial)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(viewColor))
        .cornerRadius(25)
        .padding()
    }
}

struct MotionView_Previews: PreviewProvider {
    static var previews: some View {
        MotionView(title: "Pitch:", value: 0.665)
    }
}
