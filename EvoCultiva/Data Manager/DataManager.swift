//
//  DataManager.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/24/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct DataManager: View {
    var body: some View {
        ZStack{
        Rectangle()
            .fill(Color("BackGroundYellow"))
            .frame(maxWidth: .infinity, maxHeight: .infinity )
            .edgesIgnoringSafeArea(.all)
    }
        
}

struct DataManager_Previews: PreviewProvider {
    static var previews: some View {
        DataManager()
        }
    }
}
