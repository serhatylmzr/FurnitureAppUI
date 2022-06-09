//
//  MainView.swift
//  FurnitureAppUI
//
//  Created by Serhat Yılmazer on 9.06.2022.
//

import SwiftUI

struct MainView: View {
    @StateObject var appviewModel  : AppViewModel = .init()
    @Namespace var animation
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabView(selection: $appviewModel.currentTab){
            Home(animation: animation).environmentObject(appviewModel).tag(Tab.home).setUpTab()
            Text("Cart").tag(Tab.cart).setUpTab()
            Text("Favorite").tag(Tab.favorite).setUpTab()
            Text("Profile").tag(Tab.profile).setUpTab()
        }.overlay(alignment: .bottom){
            CustomTabBar(currentTab: $appviewModel.currentTab, animation: _animation).offset( y: appviewModel.showDetailView ? 150 : 0)
        }.overlay{
                if let furniture = appviewModel.currentActiveItem, appviewModel.showDetailView {
                    DetailView(furniture: furniture, animation: animation)
                        .environmentObject(appviewModel)
                        .transition(.offset(x: 1, y: 1))
                }
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension View{
    @ViewBuilder
    func setUpTab()-> some View{
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background{
                Color("BG").ignoresSafeArea()
            }
    }
    
}
