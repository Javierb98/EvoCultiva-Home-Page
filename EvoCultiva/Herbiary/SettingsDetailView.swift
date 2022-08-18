//
//  SettingsDetailView.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/8/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct SettingsDetailView: View {
    
    let settingsFile: SettingsFile
    
    var body: some View {
        VStack {
            Image(settingsFile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(settingsFile.title)
                .frame(width: 250)
                .font(.title)
                .multilineTextAlignment(.center)
                //.fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("put text here")
                        Spacer()
                        Text(settingsFile.text)
                            .foregroundColor(.gray)
                            .font(.callout)
                        .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
        .environment(\.colorScheme, .light)
    }
struct SettingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsDetailView(settingsFile: settingsFiles[0])
            .padding(.top, 60)
    }
}
}
