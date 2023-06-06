//
//  MeditationVIew.swift
//  MeditationApp
//
//  Created by Timotius Leonardo Lianoto on 05/06/23.
//

import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    
    var body: some View {
        VStack {
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            // MARK: Meditation Details
            ZStack {
                // MARK: Background
                
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Type & Duration
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    // MARK: Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }
                    
                    // MARK: Description
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .padding(20)
            }
            .foregroundColor(.white)
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer,
                         onDismiss: nil) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}

struct MeditationVIew_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
    }
}
