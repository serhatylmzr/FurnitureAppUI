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
    var description: String
    var subtitle: String
    var price : String
}

var furnitures : [FurnitureModel] = [
    FurnitureModel(title: "Royal Palm Sofa", image: "Furniture1",description: "Erogomonical for human body, Lorem Ipsum has been the industry's , when an unknown printer took a galley of type and scrambled it to make a type specimen book.", subtitle: "Erogomonical for human body", price: "$299"),
    FurnitureModel(title: "Modern Sofa", image: "Furniture2",description: "Extra comfy chair with a palm rest Erogomonical for human body survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$199"),
    FurnitureModel(title: "Leather Sofa", image: "Furniture3",description: "Erogomonical for human body curve Erogomonical for human body curve CoreData: warning:  View context accessed for persistent container FurnitureAppUI with no stores loaded Erogomonical", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$399"),
    FurnitureModel(title: "Luxary Sofa", image: "Furniture4",description: "Extra comfy chair with a palm rest Erogomonical for human body curve Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$499"),
    FurnitureModel(title: "Deluxe Sofa", image: "Furniture5",description: "Erogomonical for human body curve Erogomonical for human body curve Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$556"),
    
    FurnitureModel(title: "Golden Sofa", image: "Furniture6",description: "Extra comfy chair with a palm rest Erogomonical for human body curve Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$499"),
    FurnitureModel(title: "Seto Sofa", image: "Furniture7",description: "Erogomonical for human body curve Erogomonical for human body curve Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", subtitle: "Extra comfy chair with a palm rest Erogomonical for human body", price: "$769")
]
