import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            HomeView().tabItem(){
                Image(systemName: "house")
            }
            ExploreView().tabItem(){
                Image(systemName: "safari")
            }
            ReelView().tabItem(){
                Image(systemName: "video")
            }
            ProfileView().tabItem(){
                Image(systemName: "person")
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
