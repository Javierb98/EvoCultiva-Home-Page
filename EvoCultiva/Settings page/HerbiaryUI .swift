//
//  HerbiaryUI .swift
//  EvoCultiva
//
//  Created by Javier Bateman on 4/1/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct HerbiaryUIView: View {
    
    var body: some View {
        NavigationView {
            List(plantFiles) { plantFile in
                NavigationLink(destination: HerbiaryDetailView(plantFile: plantFile)) { PlantFileRow(plantFile: plantFile)
                }
            }
            .navigationBarTitle("Herbiary")
        }
        .environment(\.colorScheme, .light)
    }
}

struct HerbiaryUI_Previews: PreviewProvider {
    static var previews: some View {
        HerbiaryUIView()
    }
}

struct PlantFileRow: View {
    
    let plantFile: PlantFile
    
    var body: some View {
        HStack {
            Image(plantFile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(plantFile.title)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(plantFile.latin)
            }
        }
    }
}
