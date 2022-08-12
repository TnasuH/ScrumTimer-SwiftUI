//
//  AVPlayer+Ding.swift
//  ScrumTimer
//
//  Created by Tarik Nasuhoglu on 12.08.2022.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
