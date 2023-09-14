//
//  ExploreView.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
                   ScrollView {
                       // Your ExploreView content here
                   }
                   .navigationBarTitle("Explore", displayMode: .inline)
               }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
