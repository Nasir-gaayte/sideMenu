//
//  ContentView.swift
//  SideMenu
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    @State private var selectedTab: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                ZStack {
                    TabView(selection: $selectedTab ){
                        Text("Dashboard").tag(0)
                        Text("Profile").tag(1)
                        Text("Preferences").tag(2)
                        Text("Search").tag(3)
                        Text("Notifications").tag(4)
                    }
                }
                
                SideMenuView(isShowing: $showMenu, selectedMenu:  $selectedTab    )
            }
            .toolbar(showMenu ? .hidden :.visible , for:.navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                        Button (action:{
                            showMenu.toggle()
                          
                            
                        },label: {
                            Image(systemName: "line.3.horizontal")
                        })
                    }
                    
                }
              
            
        }
    }
}

#Preview {
    ContentView()
}
