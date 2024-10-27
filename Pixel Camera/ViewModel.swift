//
//  ViewModel.swift
//  Pixel Camera
//
//  Created by FELIPE GADEA LLOPIS on 27/10/24.
//


import Foundation
import CoreImage
import Observation

@Observable
class ViewModel {
    var currentFrame: CGImage?
    private let cameraManager = CameraManager()
    
    init() {
        Task {
            await handleCameraPreviews()
        }
    }
    
    func handleCameraPreviews() async {
        for await image in cameraManager.previewStream {
            Task { @MainActor in
                print(image)
                currentFrame = image
            }
        }
    }
    
}
