//
//  SettingsUIView.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/1/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import SwiftUI

struct SettingsUIView: View {
    
    var body: some View {
        NavigationView {
            List(settingsFiles) { settingsFile in
                NavigationLink(destination:
                SettingsDetailView(settingsFile: settingsFile)) { SettingsFileRow(plantFile: settingsFile)
                }
            }
            .navigationBarTitle("Settings")
        }
        .environment(\.colorScheme, .light)
    }
}

struct SettingsUI_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}

struct SettingsFileRow: View {
    
    let settingsFile: SettingsFile
    
    var body: some View {
        HStack {
            Image(settingsFile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(settingsFile.title)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(settingsFile.latin)
            }
        }
    }
}
