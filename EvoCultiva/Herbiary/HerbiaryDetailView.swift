//
//  HerbiaryDetailView.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/8/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct HerbiaryDetailView: View {
    
    let plantFile: PlantFile
    
    var body: some View {
        VStack {
            Image(plantFile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(plantFile.title)
                .frame(width: 250)
                .font(.title)
                .multilineTextAlignment(.center)
                //.fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("pH range")
                        Spacer()
                        Text(plantFile.latin)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("EC range     ")
                        Spacer()
                        Text(plantFile.EC)
                            .foregroundColor(.gray)
                            .font(.callout)
                        .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Temperature range          ")
                        Spacer()
                        Text(plantFile.temp)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .multilineTextAlignment(.trailing)
                   }
                }
            }
        }
        .environment(\.colorScheme, .light)
    }
struct HerbiaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HerbiaryDetailView(plantFile: plantFiles[0])
            .padding(.top, 60)
    }
}
}
