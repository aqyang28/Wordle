//
//  Global.swift
//  Wordle
//
//  Created by Alex Yang on 4/23/25.
//

import Foundation
import UIKit

enum Global {
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.size.width
    }

    static var screenHeight: CGFloat {
        UIScreen.main.bounds.size.height
    }

    static var minDimension: CGFloat {
        min(screenWidth, screenHeight)
    }

    static var boardWidth: CGFloat {
        switch minDimension {
        case 0 ... 320:
            return screenWidth - 55
        case 321 ... 430:
            return screenWidth - 50
        case 431 ... 1000:
            return 350
        default: return 500
        }
    }
}
