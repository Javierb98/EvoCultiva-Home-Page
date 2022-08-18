//
//  CalculatorDetails.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/25/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import Foundation
import SwiftUI

struct Contact: Identifiable {
    let imageName: String
    let title: String
    let equation: String
    let description: String
    let example: String
    let id = UUID()
}

let contacts = [
    Contact(imageName: "lightmoney", title: "Monthly cost of running electrical equipment", equation:  "C x N x ((W x H)/1000)) x 30", description: "Calculate the cost of running your pumps, lights, fans and other machines by using this equation where C is the cost of a kwH of energy where you live N is the number of the same appliances that you use H is the amount of hours you run the appliance daily W is the watts an appliance uses", example: "Lets say you have five identical grow lights and one water pump...."),
    Contact(imageName: "ebb:flow", title: "Calculating gallons in a grow bed", equation: "L x W x D x .0043", description: "abc", example: "abc"),
    Contact(imageName: "pump", title: "Sizing ebb and flow pump", equation: "L’ x W’ x 1.25 x 10 = Needed GPH", description: "This is how you size your pump", example: "abc"),
]
