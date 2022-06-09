//
//  FurnitureModel.swift
//  FurnitureAppUI
//
//  Created by Serhat Yılmazer on 9.06.2022.
//

import Foundation

struct FurnitureModel : Identifiable{
    var id : String = UUID().uuidString
    var title : String
    var image : String
    var subtitle: String
    var price : String
}

var furnitures : [FurnitureModel] = [
    FurnitureModel(title: "Royal Palm Sofa", image: "Furniture1", subtitle: "Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with no stores loaded Erogomonical for human body curve", price: "$299"),
 FurnitureModel(title: "Modern Sofa", image: "Furniture2", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with no stores loaded Erogomonical for human body ", price: "199"),
 FurnitureModel(title: "Leather Sofa", image: "Furniture3", subtitle: "Erogomonical for human body curve Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with no stores loaded Erogomonical", price: "$399"),
 FurnitureModel(title: "Luxary Sofa", image: "Furniture1", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with no stores loaded Erogomonical for", price: "$499"),
 FurnitureModel(title: "Seto Sofa", image: "Furniture2", subtitle: "Erogomonical for human body curve Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with ", price: "$1299")
]
