//
//  ContentView.swift
//  AudioPlayer
//
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    self.audioPlayer.play()
                } label: {
                    Image(systemName: "play")
                }
                .font(.largeTitle)

            }
            Spacer()
            VStack {
                Button {
                    self.audioPlayer.pause()
                } label: {
                    Image(systemName: "pause")
                }
                .font(.largeTitle)
            }
        }
        .padding(100)
        .onAppear {
            let sound = Bundle.main.path(forResource: "audio", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
