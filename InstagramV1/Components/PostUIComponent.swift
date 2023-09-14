//
//  PostUIComponent.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct PostUIComponent: View {
    var body: some View {
        VStack(){
            HStack(){
                ProfileComponent(imageWidth: 50, imageHeight: 50)
                
                
                Text("Shreehari").bold()
                Spacer()
                
                Image(systemName: "ellipsis")
            }.padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 10))
            
            Image("fake_pf").resizable().frame(height: 500)
            
            HStack(){
                Image(systemName: "heart").resizable().frame(width: 25, height: 25)
                
                Image(systemName: "message").resizable().frame(width: 25, height: 25).padding(5)
                Image(systemName: "paperplane").resizable().frame(width: 25, height: 25)
                
                Spacer()
                Image(systemName: "bookmark").resizable().frame(width: 25, height: 25)
            }.padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 15))
            
           
            VStack(){
                HStack(){
                    Text("22,000 likes")
                    Spacer()
                }.padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 0)).bold()
                HStack(){
                    Text("Shreehari:").padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0)).bold()
                    Text("Smiling :))")
                    Spacer()
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("40 minutes ago").foregroundColor(Color.gray).font(.system(size: 14)).padding(EdgeInsets(top: 5, leading: 15, bottom: 0, trailing: 0)).frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
            }
        }
    }
    }


struct PostUIComponent_Previews: PreviewProvider {
    static var previews: some View {
        PostUIComponent()
    }
}
