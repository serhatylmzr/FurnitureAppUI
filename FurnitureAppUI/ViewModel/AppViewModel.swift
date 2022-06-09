//
//  AppViewModel.swift
//  FurnitureAppUI
//
//  Created by Serhat Yılmazer on 9.06.2022.
//

import SwiftUI

class AppViewModel: ObservableObject {
    @Published var currentTab : Tab = .home
    @Published var currentMenu : String = "All"
    @Published var showDetailView : Bool = false
    @Published var currentActiveItem : FurnitureModel? 
}
