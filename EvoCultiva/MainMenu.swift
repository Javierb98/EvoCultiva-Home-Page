//
//  ContentView.swift
//  EvoCultiva
//
//  Created by Javier Bateman on 3/16/21.
//  Copyright © 2021 Javier Bateman. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("BackGroundYellow"))
                .frame(maxWidth: .infinity, maxHeight: .infinity )
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    EncyclopediaButton()
                        .padding(0)
                    CalculatorButton()
                    }
                HStack{
                    GrowCalendarButton()
                        .padding(0)
                    AccountButton()
                }
                VStack{
                    DataManagementButton()
                        .padding(40)
                    
                }
                }
            }
        }
    }
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct DataManagementButton: View {
    
    @State var circletapped = false
    @State var circlepressed = false
    
    var body: some View {
        ZStack {
            Image(systemName: "thermometer")
                .font(.system(size: 100, weight: .light))
                .offset(x: circlepressed ? -90 : 0, y: circlepressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlepressed ? 20: 0), axis: (x:10, y: -10, z: 0))
                .frame(width: 200, height: 200)
        }
        .frame(width: 100, height: 100)
    .background(
        ZStack{
            Circle()
                .fill(Color(.white))
                .frame(width: 200, height: 200)
            }
        )
            .scaleEffect(circletapped ? 1.2 : 1)
            .onTapGesture (count: 1) {
                self.circletapped.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.circletapped = false
            }
        }
        .padding(20)
    }
}
struct GrowCalendarButton: View {
    
    @State var circletapped = false
    @State var circlepressed = false
    
    var body: some View {
        ZStack {
            Image(systemName: "calendar")
                .font(.system(size: 60, weight: .light))
                .offset(x: circlepressed ? -90 : 0, y: circlepressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlepressed ? 20: 0), axis: (x:10, y: -10, z: 0))
                .frame(width: 150, height: 150)
        }
        .frame(width: 60, height: 60)
    .background(
        ZStack{
            Circle()
                .fill(Color(.white))
                .frame(width: 120, height: 120)
            }
        )
            .scaleEffect(circletapped ? 1.2 : 1)
            .onTapGesture (count: 1) {
                self.circletapped.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.circletapped = false
            }
        }
    .padding(50)
    }
}
struct CalculatorButton: View {
    
    @State var circletapped = false
    @State var circlepressed = false
    
    var body: some View {
        ZStack {
            Image(systemName: "plusminus")
                .font(.system(size: 50, weight: .light))
                .offset(x: circlepressed ? -90 : 0, y: circlepressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlepressed ? 20: 0), axis: (x:10, y: -10, z: 0))
                .frame(width: 150, height: 150)
        }
        .frame(width: 60, height: 60)
    .background(
        ZStack{
            Circle()
                .fill(Color(.white))
                .frame(width: 120, height: 120)
            }
        )
            .scaleEffect(circletapped ? 1.2 : 1)
            .onTapGesture (count: 1) {
                self.circletapped.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.circletapped = false
            }
        }
    .padding(50)
    }
}

struct AccountButton: View {
    
    @State var circletapped = false
    @State var circlepressed = false
    
    var body: some View {
        ZStack {
            Image(systemName: "gear")
                .font(.system(size: 50, weight: .light))
                .offset(x: circlepressed ? -90 : 0, y: circlepressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlepressed ? 20: 0), axis: (x:10, y: -10, z: 0))
                .frame(width: 150, height: 150)
        }
        .frame(width: 60, height: 60)
    .background(
        ZStack{
            Circle()
                .fill(Color(.white))
                .frame(width: 120, height: 120)
               
                
            }
        )
            .scaleEffect(circletapped ? 1.2 : 1)
            .onTapGesture (count: 1) {
                self.circletapped.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.circletapped = false
            }
        }
    .padding(50)
    }
}
struct EncyclopediaButton: View {
    
    @State var circletapped = false
    @State var circlepressed = false
    
    var body: some View {
       
        ZStack {
            NavigationLink(destination: HerbiaryUIView()){
            Image(systemName: "book.fill")
                .font(.system(size: 50, weight: .light))
                .offset(x: circlepressed ? -90 : 0, y: circlepressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlepressed ? 20: 0), axis: (x:10, y: -10, z: 0))
                .frame(width: 150, height: 150)
            }
        }
        .frame(width: 60, height: 60)
    .background(
        ZStack{
            Circle()
                .fill(Color(.white))
                .frame(width: 120, height: 120)
               
                
            }
        )
            .scaleEffect(circletapped ? 1.2 : 1)
            .onTapGesture (count: 1) {
                self.circletapped.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.circletapped = false
            }
        }
    .padding(50)
    }
}
