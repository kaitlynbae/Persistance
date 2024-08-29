//
//  ContentView.swift
//  Persistance
//
//  Created by Kaitlyn H. Bae on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("All About Me")
                .fontWeight(.black)
                .font(.system(size: 55))
                .underline()
            NavigationView{
                VStack{
                    
                    NavigationLink("To Do List"){
                        ToDoListView()
                    }
                    Spacer()
                        .frame(height: 150)
                    Divider()
                    Spacer()
                        .frame(height: 150)
                    NavigationLink("College List"){
                        CollegeListView()
                    }
                }
            }
        }
    }
}

    #Preview {
        ContentView()
    }
