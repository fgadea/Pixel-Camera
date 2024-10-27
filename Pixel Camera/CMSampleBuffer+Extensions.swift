//
//  CMSampleBuffer+Extensions.swift
//  Pixel Camera
//
//  Created by FELIPE GADEA LLOPIS on 27/10/24.
//

import Foundation
import AVFoundation
import CoreImage

extension CMSampleBuffer {
    
    var cgImage: CGImage? {
        let pixelBuffer: CVPixelBuffer? = CMSampleBufferGetImageBuffer(self)
        
        guard let imagePixelBuffer = pixelBuffer else {
            return nil
        }
        
        return CIImage(cvPixelBuffer: imagePixelBuffer).cgImage
    }
    
}
