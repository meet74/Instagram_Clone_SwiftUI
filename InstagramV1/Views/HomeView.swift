//
//  HomeView.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
                   ScrollView {
                       VStack(){
                           HStack(){
                               Text("Instagram").bold().padding().font(Font.custom("DancingScript-Bold", size: 25))
                               Spacer()
                               Image(systemName: "heart").resizable().frame(width: 22,height: 22).padding(4)
                               Image(systemName: "message").resizable().frame(width: 22,height: 22).padding()
                           }
                           ScrollView(.horizontal, showsIndicators: false) {
                               HStack(alignment: .top) {
                                   VStack(){
                                       MyProfileCompomonent(imageWidth: 90, imageHeight: 90).padding(4)
                                       
                                       Text("Your Story")
                                   }
                                   ForEach(1..<10) { index in
                                       VStack(){
                                           ProfileComponent(imageWidth: 100, imageHeight: 100)
                                           Text("Shreehari")
                                       }
                                       
                                   }
                               }
                           }
                           Divider()
                           PostUIComponent()
                           PostUIComponent()
                           PostUIComponent()
                           PostUIComponent()
                       }
                   }
//                   .navigationBarTitle("Instagram", displayMode: .inline)
               }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


