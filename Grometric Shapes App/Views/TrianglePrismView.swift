//
//  TrianglePrismView.swift
//  Grometric Shapes App
//
//  Created by Sebastian on 2024-10-28.
//

import SwiftUI

struct TrianglePrismView: View {
    
    //MARK: stored properties
    @State var currentPrism = TriangularPrism(sideA: 50, sideB: 10, sideC: 10, length: 10, height: 10)
    
    var body: some View {
        VStack {
            
            // add an image
            
            //text view (slider)
            Text("Side A")
            
            //slider control for user input
            Slider(
                value: $currentPrism.sideA,
                in: 1...100,
                step: 1.0
            )
            
            //label (slider value)
            Text("Length \(currentPrism.sideA.formatted())")
        
            
        }
    }
}

#Preview {
    TrianglePrismView()
}
