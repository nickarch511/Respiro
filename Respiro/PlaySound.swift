//
//  playSound.swift
//  Inhale
//
//  Created by Nick Karch on 5/14/21.
//

import AVFoundation

var audioPlayer : AVAudioPlayer?
struct Player {
    func playSound(sound:String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                print("Sound played")
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
                
            } catch {
                print("ERROR. AudioPlayer threw exception")
            }
        }
        
        
    }
    
    func stopPlaying() {
        audioPlayer?.stop()
    }

}
