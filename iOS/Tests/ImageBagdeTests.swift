//
//  ImageBagdeTests.swift
//  Swift Interface Tests
//
//  Created by Daniel Nielsen on 12/08/2020.
//  Copyright © 2020 MapsPeople A/S. All rights reserved.
//

import XCTest
import MapsIndoorsUtils
import UIKit

class ImageBagdeTests: XCTestCase {

    
    fileprivate func addAttachement(_ image: UIImage?, _ name: String) {
        
        let attachment = XCTAttachment.init(image: image!)
        attachment.lifetime = .keepAlways
        attachment.name = name
        add(attachment)
    }
    
    func testImageBagde_addBadgeToImage() throws {
        let expectedImage = "default_badge_sample_2.png"
        let bundle = Bundle.init(for: ImageBagdeTests.self)
        let sampleImage = UIImage.init(named: "sample.png", in: bundle, compatibleWith: nil)
        let sampleImageWithBadge = UIImage.init(named: expectedImage, in: bundle, compatibleWith: nil)
        let badgeConfig = BagdedIconConfiguration(originalIcon:sampleImage!, badgeText:"2")
        let image = BagdedIcon.bagdedIcon(config:badgeConfig)
        
        XCTAssertNotNil(image)
        XCTAssertTrue(ImageSimilarity.isSimilar(first: image!, second: sampleImageWithBadge!, threshold: 0.001))

        addAttachement(image, expectedImage)
    }
    
    func testImageBagde_bagdePosition_topLeft() throws {
        let expectedImage = "default_badge_sample_2_topLeft.png"
        let bundle = Bundle.init(for: ImageBagdeTests.self)
        let sampleImage = UIImage.init(named: "sample.png", in: bundle, compatibleWith: nil)
        let sampleImageWithBadge = UIImage.init(named: expectedImage, in: bundle, compatibleWith: nil)
        let badgeConfig = BagdedIconConfiguration(originalIcon:sampleImage!, badgeText:"2")
        badgeConfig.bagdePosition = .topLeft
        let image = BagdedIcon.bagdedIcon(config:badgeConfig)
        
        XCTAssertNotNil(image)
        XCTAssertTrue(ImageSimilarity.isSimilar(first: image!, second: sampleImageWithBadge!, threshold: 0.001))
        
        addAttachement(image, expectedImage)
    }
    
    func testImageBagde_bagdePosition_bottomLeft() throws {
        let expectedImage = "default_badge_sample_2_bottomLeft.png"
        let bundle = Bundle.init(for: ImageBagdeTests.self)
        let sampleImage = UIImage.init(named: "sample.png", in: bundle, compatibleWith: nil)
        let sampleImageWithBadge = UIImage.init(named: expectedImage, in: bundle, compatibleWith: nil)
        let badgeConfig = BagdedIconConfiguration(originalIcon:sampleImage!, badgeText:"2")
        badgeConfig.bagdePosition = .bottomLeft
        let image = BagdedIcon.bagdedIcon(config:badgeConfig)
        
        XCTAssertNotNil(image)
        XCTAssertTrue(ImageSimilarity.isSimilar(first: image!, second: sampleImageWithBadge!, threshold: 0.001))
        
        addAttachement(image, expectedImage)
    }
    
    func testImageBagde_bagdePosition_bottomRight() throws {
        let expectedImage = "default_badge_sample_2_bottomRight.png"
        let bundle = Bundle.init(for: ImageBagdeTests.self)
        let sampleImage = UIImage.init(named: "sample.png", in: bundle, compatibleWith: nil)
        let sampleImageWithBadge = UIImage.init(named: expectedImage, in: bundle, compatibleWith: nil)
        let badgeConfig = BagdedIconConfiguration(originalIcon:sampleImage!, badgeText:"2")
        badgeConfig.bagdePosition = .bottomRight
        let image = BagdedIcon.bagdedIcon(config:badgeConfig)
        
        XCTAssertNotNil(image)
        XCTAssertTrue(ImageSimilarity.isSimilar(first: image!, second: sampleImageWithBadge!, threshold: 0.001))
        
        addAttachement(image, expectedImage)
    }

}
