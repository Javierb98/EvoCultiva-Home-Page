//
//  SettingsDetails.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/8/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import Foundation
import SwiftUI

struct SettingsFile: Identifiable {
    let imageName: String
    let title: String
    let text: String
    let id = UUID()
}

let settingsFiles = [
    SettingsFile(imageName: "lettuce", title: "Lettuce", text: "abc"),
]
