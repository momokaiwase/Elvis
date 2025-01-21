//
//  ContentView.swift
//  Elvis
//
//  Created by Momoka Iwase on 2025/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundStyle(.purple)
            Spacer()
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "peace"
                }
                Button("Love") {
                    imageName = "heart"
                    message = "love"
                }
                Button("Understanding") {
                    imageName = "lightbulb"
                    message = "understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
