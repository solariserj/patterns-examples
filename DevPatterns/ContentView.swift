//
//  ContentView.swift
//  DevPatterns
//
//  Created by Serjant Alexandru on 04.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Image("icon")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)

            Text("Patterns of SolariSerJ")
            
            List(viewModel.list, id: \.title) { element in
                PatternCellView(viewModel: .init(element)).onTapGesture {
                    viewModel.select(patern: element)
                }
            }
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init())
    }
}
