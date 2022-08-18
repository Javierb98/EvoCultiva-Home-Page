//
//  HerbiaryDetails.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/8/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import Foundation
import SwiftUI

struct PlantFile: Identifiable {
    let imageName: String
    let title: String
    let latin: String
    let EC: String
    let temp: String
    let id = UUID()
}

let plantFiles = [
    PlantFile(imageName: "lettuce", title: "Lettuce", latin:  " abc", EC: "abc", temp: "abc"),

]
