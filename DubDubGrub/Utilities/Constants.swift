//
//  Constants.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/28/22.
//

import UIKit

enum RecordType {
    static let location = "DDGLocation"
    static let profile = "DDGProfile"
}

enum PlaceholderImage {
    static let avatar = UIImage(named: "default-avatar")!
    static let square = UIImage(named: "default-square-asset")!
    static let banner = UIImage(named: "default-banner-asset")!
}

enum ImageDimention {
    case square, banner
    
    static func getPlaceholder(for dimention: ImageDimention) -> UIImage {
        switch dimention {
        case .banner:
            return PlaceholderImage.banner
        case .square:
            return PlaceholderImage.square
        }
    }
}
