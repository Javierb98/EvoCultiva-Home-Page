//
//  Detail sheet.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/25/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.title)
                .frame(width: 250)
                .font(.title)
                .multilineTextAlignment(.center)
               // .fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("Equation")
                        Spacer()
                        Text(contact.equation)
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack {
                        Text("Description     ")
                        Spacer()
                        Text(contact.description)
                            .foregroundColor(.gray)
                            .font(.callout)
                        .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Example          ")
                        Spacer()
                        Text(contact.example)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .multilineTextAlignment(.trailing)
                   }
                }
            }
        }
        .environment(\.colorScheme, .light)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
            .padding(.top, 60)
    }
}
