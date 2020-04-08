//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Al Amin on 7/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            playerView()
            .tag(0)
            .tabItem {
                VStack {
                    Image(systemName: "music.note")
                    Text("Player")
                }
            }
            
            SearchView()
            .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
        }
        .accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
