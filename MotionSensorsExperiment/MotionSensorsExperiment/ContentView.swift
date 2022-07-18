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
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
