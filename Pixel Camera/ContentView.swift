//
//  ContentView.swift
//  Pixel Camera
//
//  Created by FELIPE GADEA LLOPIS on 27/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()
        
        var body: some View {
            CameraView(image: $viewModel.currentFrame)
        }
}

#Preview {
    ContentView()
}
