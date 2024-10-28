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
                    Text("Side A:")
                        .fontWeight(.bold)

                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.sideA,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("\(currentPrism.sideA.formatted()) units")
                
                    
                }
                
                //side b vstack
                VStack{
                    //text view (slider)
                    Text("Side B:")
                        .fontWeight(.bold)

                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.sideB,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("\(currentPrism.sideB.formatted()) units")
                
                    
                }
                
                //side c vstack
                VStack{
                    //text view (slider)
                    Text("Side C:")
                        .fontWeight(.bold)

                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.sideC,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("\(currentPrism.sideC.formatted()) units")
                
                    
                }
                
                
                
            }
            
            Spacer()
            
            //hstack for length and height
            HStack{
                
                //vstack for length
                VStack{
                    //text view (slider)
                    Text("Length:")
                        .fontWeight(.bold)

                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.length,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("\(currentPrism.length.formatted()) units")
                
                    
                }
                
                //height vstack
                VStack{
                    //text view (slider)
                    Text("Height:")
                        .fontWeight(.bold)

                    
                    //slider control for user input
                    Slider(
                        value: $currentPrism.height,
                        in: 1...100,
                        step: 1.0
                    )
                    
                    //label (slider value)
                    Text("\(currentPrism.height.formatted()) units")
                
                    
                }
            }
            
            Spacer()
            
            //MARK: the output
            
            //label the differet computed values
            VStack {
                //base area
                Text("The base area is:")
                    .fontWeight(.bold)
                    .padding(.top)
                        
                Text("\(currentPrism.baseArea.formatted()) units")
                    .padding(.bottom)
                
                //side area
                Text("The area of the sides is:")
                    .fontWeight(.bold)
                        
                Text("\(currentPrism.areaOfRectangles.formatted()) units")
                    .padding(.bottom)
                
                //total area
                Text("The total area is:")
                    .fontWeight(.bold)
                        
                Text("\(currentPrism.totalArea.formatted()) units")
                    .padding(.bottom)
                
                //volume
                Text("The volume is:")
                    .fontWeight(.bold)
                        
                Text("\(currentPrism.volume.formatted()) units")
            }
           
        }
        .padding()
    }
}

#Preview {
    TrianglePrismView()
}
