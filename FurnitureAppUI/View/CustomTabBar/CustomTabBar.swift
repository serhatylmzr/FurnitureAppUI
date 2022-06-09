//
//  CustomTabBar.swift
//  FurnitureAppUI
//
//  Created by Serhat Yılmazer on 9.06.2022.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var currentTab : Tab
    @Namespace var animation : Namespace.ID
    //CurrentTab X Value
    @State var currentTabXValue : CGFloat = 0
    
    var body: some View {
        HStack(spacing : 0){
            ForEach(Tab.allCases, id : \.rawValue){ tab in
                TabButton(tab: tab).overlay{
                    Text(Tab.getTabName(value :tab.rawValue))
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color("Black"))
                        .offset(y: currentTab == tab ? 5 : 100)
                }
            }
        }.padding(.top).padding(.bottom, getSafeArea().bottom == 0 ? 15: 10)
            .background{
                Color.white
                    .shadow(color: Color("Black").opacity(0.08), radius: 5, x: 0, y: -5)
                    .clipShape(BottomCurve(currentXValue: currentTabXValue))
                    .ignoresSafeArea(.container, edges: .bottom)
            }
    }
    
    //Tab Button
    @ViewBuilder
    func TabButton(tab : Tab) -> some View {
        GeometryReader{ proxy in
            Button() {
                withAnimation(.easeInOut){
                    currentTab = tab
                    
                    currentTabXValue = proxy.frame(in: .global).midX
                }
            } label: {
                Image(systemName: tab.rawValue).resizable().renderingMode(.template).aspectRatio( contentMode: .fit).frame(width: 25, height: 25).frame(maxWidth: .infinity)
                    .foregroundColor(currentTab == tab ? .white : .gray.opacity(0.8))
                    .padding(currentTab == tab ? 15 : 0)
                    .contentShape(Rectangle())
                    .background(
                        ZStack{
                            if currentTab == tab {
                                Circle().fill(Color("Orange"))
                                    .shadow(color: Color("Black").opacity(0.1), radius: 8, x: 5, y: 5)
                                    .matchedGeometryEffect(id: "TAB", in: animation)
                            }
                        }
                    )
                    .offset(y: currentTab == tab ? -50 : 0)
            }
            .onAppear{
                if tab == Tab.allCases.first && currentTabXValue == 0 {
                    currentTabXValue = proxy.frame(in: .global).midX
                }
            }
        }.frame(height: 30)
    }
}


enum Tab : String,CaseIterable {
    case home = "house.fill"
    case cart = "bag.fill"
    case favorite = "star.fill"
    case profile = "person.fill"
    
    static func getTabName(value : String) -> String {
        switch value{
        case "house.fill":
           return "Home"
        case "bag.fill":
            return "Cart"
        case "star.fill":
             return "Favorite"
        case "person.fill":
            return  "Profile"
            default :
              return "Home"
        }
    }
}
extension View{
    func getSafeArea()-> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {return .zero}
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return .zero
        }
        return safeArea
    }
    
}

