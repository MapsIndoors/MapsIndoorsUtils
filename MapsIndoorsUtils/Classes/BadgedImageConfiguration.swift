//
//  BagdedImageConfiguration.swift
//  MapsIndoors
//
//  Created by Daniel Nielsen on 13/08/2020.
//  Copyright © 2020 MapsPeople A/S. All rights reserved.
//
import UIKit
import Foundation


/// Badge position model. Use the static getters to get positions for top right, top left, bottom left and bottom right.
public class BagdePosition {
    /// Static getter a top right position value.
    static let topRight = BagdePosition(x: 0.9, y: 0.1)
    /// Static getter a top left position value.
    static let topLeft = BagdePosition(x: 0.1, y: 0.1)
    /// Static getter a bottom right position value.
    static let bottomRight = BagdePosition(x: 0.9, y: 0.9)
    /// Static getter a bottom left position value.
    static let bottomLeft = BagdePosition(x: 0.1, y: 0.9)
    let point: CGPoint
    init(x:CGFloat, y:CGFloat) {
        point = CGPoint(x: x, y: y)
    }
}

/// Badge image configuration model.
public class BagdedImageConfiguration {
    /// The source image.
    let sourceImage:UIImage
    /// The badge text that should be rendered inside the badge.
    let badgeText:String
    /// Set the badge text color.
    var badgeTextColor:UIColor
    /// Set the padding between the badge text and the edge of the badge. Default is 2 points.
    var badgePadding:CGFloat
    /// Set the background color for the badge. Default is DarkGray.
    var badgeBackgroundColor:UIColor
    /// Set the font that should be used when rendering the badge text. Default is system font with size 16.
    var badgeFont:UIFont
    /// Set the position of the badge. Default is top right.
    var bagdePosition:BagdePosition
    
    /// Badge image configuration model.
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
