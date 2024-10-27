//
//  CIImage+Extensions.swift
//  Pixel Camera
//
//  Created by FELIPE GADEA LLOPIS on 27/10/24.
//


import CoreImage

extension CIImage {
    
    var cgImage: CGImage? {
        let ciContext = CIContext()
        guard let cgImage = ciContext.createCGImage(self, from: self.extent) else {
            return nil
        }
        
        return cgImage
    }
    
}
