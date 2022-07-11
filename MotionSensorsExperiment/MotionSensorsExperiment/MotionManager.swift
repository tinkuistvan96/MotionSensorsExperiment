//
//  MotionManager.swift
//  MotionSensorsExperiment
//
//  Created by Tinku István on 2022. 07. 11..
//

import CoreMotion
//import SwiftUI

class MotionManager: ObservableObject {
    
    private let motionManager = CMMotionManager()
    
    @Published var pitch : Double = 0.0
    @Published var roll : Double = 0.0
    @Published var yaw : Double = 0.0
    
    init() {
        motionManager.startDeviceMotionUpdates(to: .main) { [weak self] data, error in

            guard let motion = data?.attitude else { return }
            self?.roll = motion.roll
            self?.pitch = motion.pitch
            self?.yaw = motion.yaw
        }
    }
}
