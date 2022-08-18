//
//  CalendarPage.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/25/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct CalendarPage: View {
    
    var body: some View {
        ZStack{
        Rectangle()
            .fill(Color("BackGroundYellow"))
            .frame(maxWidth: .infinity, maxHeight: .infinity )
            .edgesIgnoringSafeArea(.all)
    }
        
    
}

struct CalendarPage_Preview: PreviewProvider {
    static var previews: some View {
        DataManager()
    }
}
}
