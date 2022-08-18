//
//  SettingsDetails.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/30/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import SwiftUI

struct SettingDetailsView: View {
    
    let SettingsFile: settingsFile
    
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
                        Text("pH range")
                        Spacer()
                        Text(settingsFile.latin)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("EC range     ")
                        Spacer()
                        Text(settingsFile.EC)
                            .foregroundColor(.gray)
                            .font(.callout)
                        .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Temperature range          ")
                        Spacer()
                        Text(settingsFile.temp)
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
        SettingsDetailView(plantFile: settingsFiles[0])
            .padding(.top, 60)
    }
}
}
