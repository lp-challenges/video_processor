import AVFoundation
import AVKit
import CoreImage
import Foundation

struct SampleBufferTransformer {

    enum Filter: String {
        case colorInvert = "CIColorInvert"
    }

    func transform(videoSampleBuffer: CMSampleBuffer, with filter: Filter) -> CMSampleBuffer {
        
        return videoSampleBuffer
    }
}

extension CIImage {
    convenience init(buffer: CMSampleBuffer) {
        self.init(cvPixelBuffer: CMSampleBufferGetImageBuffer(buffer)!)
    }
}
