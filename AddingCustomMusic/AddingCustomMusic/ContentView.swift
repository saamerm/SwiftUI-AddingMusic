//
//  ContentView.swift
//  AddingCustomMusic
//
//  Created by Saamer Mansoor on 3/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .onAppear{
                playSound(sound: "pmSong", type: "mp3")
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
