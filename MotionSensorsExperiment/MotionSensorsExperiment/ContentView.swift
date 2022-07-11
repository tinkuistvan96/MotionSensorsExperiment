//
//  ContentView.swift
//  MotionSensorsExperiment
//
//  Created by Tinku István on 2022. 07. 11..
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var motion = MotionManager()
    
    var body: some View {
        
        NavigationView {
            VStack {
                MotionView(title: "Roll:", value: motion.roll)
                MotionView(title: "Pitch:", value: motion.pitch)
                MotionView(title: "Yaw:", value: motion.yaw)
                Spacer()
            }
            .navigationTitle("Motions")
        }
    }
}

struct MotionView: View {
    
    @State var title: String
    @State var value: Double
    private var formattedValue: String {
        return String(format: "%.1f", value)
    }
    private var viewColor: UIColor {
        return UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 0.3)
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .bold()
                .padding()
            Text(formattedValue)
                .font(.title)
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(viewColor))
        .cornerRadius(25)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
