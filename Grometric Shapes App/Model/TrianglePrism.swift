//
//  TrianglePrism.swift
//  Grometric Shapes App
//
//  Created by Sebastian on 2024-10-28.
//

import Foundation

//define the protocol
protocol Describable {
    var description: String { get }
}

struct TriangularPrism: Describable {
    //stored properties (need all sides)
    var sideA: Double
    
    var sideB: Double
    
    var sideC: Double
    
    var length: Double
    
    var height: Double
    
    //computed properties
    //areas of sides
    var baseArea: Double {
        return sideB * length * 0.5
    }
    
    var areaOfRectangles: Double {
        return (sideA + sideB + sideC) * height
    }
    
    var totalArea: Double {
        return (baseArea * 2) + areaOfRectangles
    }
    //volume
    var volume: Double {
        return baseArea * height
    }
    
    var description: String {
        return "The base area of this prism is \(baseArea) units, the area of the sides is \(areaOfRectangles) units, the total area is \(totalArea) units and the volume is \(volume) units."
    }
    
}
