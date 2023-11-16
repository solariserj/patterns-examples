//
//  С.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 10.11.2023.
//

import Combine
import Foundation
import SwiftUI

class PatternCellViewModel  {
    
    var type: PatternType
    
    init(_ type: PatternType) {
        self.type = type
    }
    
}

struct PatternCellView: View {
    
    var viewModel: PatternCellViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.type.title)
                .font(.bold(Font.headline)())
            Text(viewModel.type.type)
                .font(.subheadline)
        }
        .frame(width: 300, height: 60)
        .overlay(content: {
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: .init(lineWidth: 2))
        })
//        .border(.black, width: 2, cornerRadius: 20)
//        .cornerRadius(20)
    
 
    }
}

