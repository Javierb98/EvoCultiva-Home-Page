//
//  CalculatorPage.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/24/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import SwiftUI

struct CalculatorPageView: View {
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle("Equations")
        }
        .environment(\.colorScheme, .light)
    }
}

struct CalculatorPageView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorPageView()
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(contact.title)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.equation)
            }
        }
    }
}
