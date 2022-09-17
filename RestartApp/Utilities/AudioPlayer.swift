//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Usha Sai Chintha on 17/09/22.
//

import Foundation
import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Couldn't play audio file")
        }
    }
}
