//
//  SettingDetailView.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/30/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import Foundation
import SwiftUI

struct SettingsFile: Identifiable {
    let imageName: String
    let title: String
    let latin: String
    let EC: String
    let temp: String
    let id = UUID()
}

let settingsFiles = [
    SettingsFile(imageName: "lettuce", title: "Lettuce", latin:  " abc", EC: "abc", temp: "abc"),

]
