//
//  ProfileComponent.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct ProfileComponent: View {
    
    var imageWidth:CGFloat
    var imageHeight:CGFloat
    
    var body: some View{
        ZStack {
            Image("fake_pf")
                .resizable().aspectRatio(contentMode:.fill)
                .frame(width: imageWidth - 10, height: imageHeight - 10)
                .clipShape(Circle())
           
            Circle()
                .stroke(LinearGradient(colors: [.pink, .yellow], startPoint: .bottom, endPoint: .top), lineWidth: 4.0)
                .frame(width: imageWidth, height: imageHeight)
        }.padding(7)
    }
}

struct ProfileComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileComponent(imageWidth: 100, imageHeight: 100)
    }
}
