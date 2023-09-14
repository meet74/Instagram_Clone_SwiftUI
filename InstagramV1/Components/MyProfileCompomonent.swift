//
//  MyProfileCompomonent.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct MyProfileCompomonent: View {
    var imageWidth:CGFloat
    var imageHeight:CGFloat
    var body: some View {
        ZStack {
            Image("fake_pf")
                .resizable().aspectRatio(contentMode:.fill)
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(Circle())
           
            Image(systemName: "plus.circle.fill").resizable().frame(width: 25,height: 25)
                           .foregroundColor(.blue)
                           .offset(x: imageWidth / 2.8, y: imageHeight / 2.5) // Adjust the values as needed
             
        }.padding(7)
    }
}

struct MyProfileCompomonent_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileCompomonent(imageWidth: 100, imageHeight: 100)
    }
}
