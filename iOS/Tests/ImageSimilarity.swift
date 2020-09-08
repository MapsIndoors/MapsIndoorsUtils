//
//  ImageSimilarity.swift
//  Swift Interface Tests
//
//  Created by Daniel Nielsen on 13/08/2020.
//  Copyright © 2020 MapsPeople A/S. All rights reserved.
//

import Foundation
import Vision

@available(iOS 13.0, *)
public class ImageSimilarity {
    
    public static func compare(first: UIImage, second: UIImage) -> Float {
        var dist:Float = Float.greatestFiniteMagnitude
        if let firstFPO = featureprintObservationForImage(image: first), let secondFPO = featureprintObservationForImage(image: first) {
            do {
                try firstFPO.computeDistance(&dist, to: secondFPO)
                
            } catch {
                print("Vision error: \(error)")
            }
        }
        return dist
    }
    
    public static func isSimilar(first: UIImage, second: UIImage, threshold:Float) -> Bool {
        
        let dist = compare(first: first, second: second)
        
        return dist < threshold
        
    }

    
    private static func featureprintObservationForImage(image: UIImage) -> VNFeaturePrintObservation? {
        let requestHandler = VNImageRequestHandler(cgImage: image.cgImage!, options: [:])
        let request = VNGenerateImageFeaturePrintRequest()
        do {
            try requestHandler.perform([request])
            return request.results?.first as? VNFeaturePrintObservation
        } catch {
            print("Vision error: \(error)")
            return nil
        }
    }
    
}
