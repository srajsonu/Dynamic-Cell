//
//  ContentView.swift
//  Cell
//
//  Created by ARY@N on 06/06/19.
//  Copyright © 2019 ARYAN. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let posts = ["1","2","3","4","5"]
    
    var body: some View {
        NavigationView {
            List{
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Trending")
                        HStack {
                            
                            VStack {
                                Image("dog")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                Text("Kiara")
                            }
                            VStack {
                                Image("dog")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                Text("Karthik")
                            }
                            VStack {
                                Image("dog")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                Text("Krrish")
                            }
                            VStack {
                                Image("dog")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                Text("BatMan")
                            }
                            VStack {
                                Image("dog")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .clipped()
                                Text("Superman")
                            }
                        }
                    }
                }.frame(height: 180)
                
                //Post Row
                ForEach(posts.identified(by: \.self)) { post in
                    postView()
                }
            }.navigationBarTitle(Text("Groups"))
        }
    }
}
struct postView: View {
    var body: some View {
        
        VStack(alignment: .leading,spacing: 16){
            HStack {
                Image("dog")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60,height: 60)
                    .clipped()
                //username
                VStack(alignment: .leading,spacing: 4){
                    Text("Klaus Mikaelson").font(.headline)
                    Text("8 hrs ago").font(.subheadline)
                }.padding(.leading,8)
            }.padding(.leading,16).padding(.top,16)
            //posts
            Text("Post are viewed here, you can come anytime and check your posts,its simply better")
                .lineLimit(nil)
                .padding(.leading,16)
                .padding(.trailing,32)
            Image("puppy")
                .resizable()
                .frame(width: 420, height: 300, alignment: .leading)
                .clipped()
        }.padding(.leading,-20).padding(.bottom,-8)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
