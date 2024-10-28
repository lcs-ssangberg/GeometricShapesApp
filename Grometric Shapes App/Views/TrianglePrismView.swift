//
//  TrianglePrismView.swift
//  Grometric Shapes App
//
//  Created by Sebastian on 2024-10-28.
//

import SwiftUI

struct TrianglePrismView: View {
    
    //MARK: stored properties
    @State var currentPrism = TriangularPrism(sideA: 50, sideB: 50, sideC: 50, length: 50, height: 50)
    
    
    
    //MARK: view and stacks (input)
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // add an image
            Image("TriangleBasedPrism")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            //hstack for side lengths
            HStack {
                
                //side a vstack
                VStack {
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
                
                //side b vstack
                VStack{
                    //text view (slider)
                    Text("Side B")
                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.sideB,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("Length \(currentPrism.sideB.formatted())")
                
                    
                }
                
                //side c vstack
                VStack{
                    //text view (slider)
                    Text("Side C")
                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.sideC,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("Length \(currentPrism.sideC.formatted())")
                
                    
                }
                
                
                
            }
            
            Spacer()
            
            //hstack for length and height
            HStack{
                
                //vstack for length
                VStack{
                    //text view (slider)
                    Text("Length")
                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.length,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("Length \(currentPrism.length.formatted())")
                
                    
                }
                
                //height vstack
                VStack{
                    //text view (slider)
                    Text("Height")
                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.height,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("Length \(currentPrism.height.formatted())")
                
                    
                }
            }
            
            Spacer()
            
            //MARK: the output
            
            //label the differet computed values
            Text("The Base Area is \(currentPrism.baseArea.formatted())")
            
            Spacer()
            
            Text("The area of the sides is \(currentPrism.areaOfRectangles.formatted())")
            
            Spacer()
            
            Text("The total area is \(currentPrism.totalArea.formatted())")
            
            Spacer()
            
            Text("The volume is \(currentPrism.volume.formatted())")
            
            Spacer()
           
        }
        .padding()
    }
}

#Preview {
    TrianglePrismView()
}
