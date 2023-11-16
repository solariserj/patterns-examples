//
//  Strategy.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 16.11.2023.
//

import Foundation
import UIKit

protocol FilterStrattegy  {
    func process(image: UIImage) -> UIImage
}

final class Filter {
    
    var filterStrategy: FilterStrattegy?

    func applyFilter(to image: UIImage) {
        filterStrategy?.process(image: image)
    }
}


final class SepiaFilter: FilterStrattegy {
    func process(image: UIImage) -> UIImage {
        print(" Apply Sepia filter ")
        return image
    }

}

final class BlackAndWhiteFilter: FilterStrattegy {
    func process(image: UIImage) -> UIImage {
        print(" Apply BlackAndWhite filter ")
        return image
    }

}

final class ChromeFilter: FilterStrattegy {
    func process(image: UIImage) -> UIImage {
        print(" Apply Chrome filter ")
        return image
    }
}
