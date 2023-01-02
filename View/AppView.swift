//
//  AppView.swift
//  Abocado
//
//  Created by yeomim Kim on 2023/01/02.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView{
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocado")
                })
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripending")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("settings")
                })
                .edgesIgnoringSafeArea(.top)
                .accentColor(Color.primary)
        }
        
    }
        struct AppView_Previews: PreviewProvider {
            static var previews: some View {
                AppView()
            }
        }
    }
