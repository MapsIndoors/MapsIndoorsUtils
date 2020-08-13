//
//  BadgedImageConfiguration.swift
//
//  Created by Daniel Nielsen on 13/08/2020.
//  Copyright © 2020 MapsPeople A/S. All rights reserved.
//

import UIKit
import Foundation

public class BagdePosition {
    static let topRight = BagdePosition(x: 0.9, y: 0.1)
    static let topLeft = BagdePosition(x: 0.1, y: 0.1)
    static let bottomRight = BagdePosition(x: 0.9, y: 0.9)
    static let bottomLeft = BagdePosition(x: 0.1, y: 0.9)
    let point: CGPoint
    init(x:CGFloat, y:CGFloat) {
        point = CGPoint(x: x, y: y)
    }
}

public class BagdedImageConfiguration {
    
    let sourceImage:UIImage
    let badgeText:String
    var badgeTextColor:UIColor
    var badgePadding:CGFloat
    var badgeBackgroundColor:UIColor
    var badgeFont:UIFont
    var bagdePosition:BagdePosition
    
    public init(sourceImage:UIImage, badgeText:String) {
        self.sourceImage = sourceImage
        self.badgeText = badgeText
        self.badgeTextColor = .white
        self.badgePadding = 2
        self.badgeBackgroundColor = .darkGray
        self.badgeFont = .systemFont(ofSize: 16)
        self.bagdePosition = BagdePosition.topRight
    }
    
}
