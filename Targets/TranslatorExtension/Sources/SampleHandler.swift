import ReplayKit
import Vision

class SampleHandler: RPBroadcastSampleHandler {
    override func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType) {
        switch sampleBufferType {
        case .video:
            // นี่คือจุดที่เราจะใส่โค้ด OCR และแปลภาษาในขั้นตอนถัดไป
            break
        default:
            break
        }
    }
}
