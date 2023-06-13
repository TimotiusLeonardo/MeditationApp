//
//  MeditationAppApp.swift
//  MeditationApp
//
//  Created by Timotius Leonardo Lianoto on 05/06/23.
//

import SwiftUI

@main
struct MeditationAppApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
