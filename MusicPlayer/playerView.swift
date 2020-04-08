//
//  playerView.swift
//  MusicPlayer
//
//  Created by Al Amin on 7/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct playerView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 24){
                Image(systemName: "a.square")
                    .resizable()
                    .frame(width: geometry.size.width - 24, height: geometry.size.width - 24)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                VStack(spacing: 8) {
                    Text("Song Title")
                        .font(Font.system(.title).bold())
                    Text("Artist Name")
                        .font(.system(.headline))
                }
                
                HStack(spacing: 40) {
                    Button(action: {
                        print("Rewind")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                            .shadow(radius: 10)
                            
                            Image(systemName: "backward.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }
                    
                    Button(action: {
                        print("Pause")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                            .shadow(radius: 10)
                            
                            Image(systemName: "pause.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }
                    
                    
                    Button(action: {
                        print("Skip")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                            .shadow(radius: 10)
                            
                            Image(systemName: "forward.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }
                }
            }
        }
    }
}

struct playerView_Previews: PreviewProvider {
    static var previews: some View {
        playerView()
    }
}
