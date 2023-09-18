//
//  ProfileView.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct ProfileView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    
    @State var isToggle:Bool = true
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(){
                    HStack(){
                        Text("S.h.r.i.j.i").font(.system(size: 25)).bold()
                        Image(systemName: "arrowtriangle.down.fill").resizable().frame(width: 8,height: 5)
                        Spacer()
                        Image(systemName: "plus.app").resizable().frame(width: 22,height: 22).padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                        Image(systemName: "text.justify").resizable().frame(width: 22,height: 22).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        
                    }.padding()
                    
                    HStack(spacing: 25){
                        MyProfileCompomonent(imageWidth: 100, imageHeight: 100)
                        
                        FollowText(numberText: "2", followText: "Post")
                        
                        FollowText(numberText: "450", followText: "Followers")
                        
                        FollowText(numberText: "490", followText: "Following")
                        
                    }
                    
                    VStack(){
                        HStack(){
                            Text("Shreehari").bold()
                            Spacer()
                        }.padding(EdgeInsets(top: 0, leading: 15, bottom: 1, trailing: 0))
                        HStack(){
                            Text("Always be happy :))")
                            Spacer()
                        }.padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 0))
                    }
                    
                    HStack(){
                        Button(action: {
                            
                        }, label: {
                            Text("Edit this profile").padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)).bold()
                                
                        }).background(Color(red: 219/255, green: 219/255, blue: 219/255)).foregroundColor(Color.black).cornerRadius(10)
                        
                        Button(action: {}, label: {
                            Text("Share profile").padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30)).bold()
                            
                        }).background(Color(red: 219/255, green: 219/255, blue: 219/255)).foregroundColor(Color.black).cornerRadius(10)
                    }.padding(10)
                    
                    HStack(){
                        Button(action: {
                            self.isToggle = true
                        }){
                            VStack(){
                                Image(systemName: "square.grid.2x2").resizable().frame(width: 20,height: 20)
                                
                                Rectangle().frame(width: 100, height: 2).padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)).opacity(isToggle ? 1 : 0)
                            }.padding(.trailing, UIScreen.main.bounds.width/4)
                        }.foregroundColor(Color.black)
                        
                        Button(action: {
                            self.isToggle = false
                        }){
                            VStack(){
                                Image(systemName: "play.rectangle").resizable().frame(width: 20,height: 20)
                                
                                Rectangle().frame(width: 100, height: 2).padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)).opacity(isToggle ? 0 : 1)
                            }
                        }.foregroundColor(Color.black)
                    }
                    if isToggle {
                        LazyVGrid(columns: columns, spacing: 2) {
                            ForEach(0..<20) { index in
                                NavigationLink(destination: ProfilePostView(),label: {
                                    
                                    Image("fake_pf")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: (UIScreen.main.bounds.width - 4) / 3, height: (UIScreen.main.bounds.width - 4) / 3)
                                        .clipped()
                                })
                            }
                        }
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
                    }
                }
                
                
            }
        }
    }
}

struct FollowText:View{
    
    var numberText:String
    var followText:String
    var body: some View{
        VStack(){
            Text(numberText).bold().padding(1).font(.system(size: 20))
            Text(followText)
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
