//
//  MainMenu.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/16/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//
import SwiftUI
import Foundation


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
       ZStack{
       Rectangle()
           .fill(Color("BackGroundYellow"))
           .frame(maxWidth: .infinity, maxHeight: .infinity )
           .edgesIgnoringSafeArea(.all)
        Logo()
        }
    }
}
struct Logo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 350, height: 270)
    }
}
