//
//  MenuCategory.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 14/06/2023.
//

import Foundation
import SwiftUI

protocol MenueItemProtocol {
    var id : UUID{get}
    var price : Double {get}
    var Title : String {get}
    var menurCatogry :menuCatagury {get}
    var Price : Int {get set}
    var ingredient :[ingredient] {get set}
}

enum menuCatagury:String{
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Desert"
}
enum SortBy:String{
    case MostPopular = "Most Popular"
    case price = "price$-$$$"
    case A_Z = "A-Z"
}

class MenuItem:Identifiable,MenueItemProtocol,ObservableObject{
    var id = UUID()
    
    var price: Double
    
    var menurCatogry: menuCatagury
    
    var Price: Int
    var image : String
    var orderCount = 1000
    var Title : String
    var ingredient : [ingredient]
    init(Title: String,ingredient: [ingredient],id: UUID, price: Double, Price: Int,menurCatogry: menuCatagury,image : String) {
       
        self.price = price
        self.menurCatogry = menurCatogry
        self.Price = Price
        self.Title = Title
        self.ingredient = ingredient
        self.image = image
    }
}

class MenuViewViewModel:Identifiable , ObservableObject {
    @Published var FoodMenueItem = [MenuItem(Title: "Food1", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "1.png"),
                         MenuItem(Title: "Food2", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "2.png"),
                         MenuItem(Title: "Food3", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "3.png"),
                         MenuItem(Title: "Food4", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "4.png"),
                         MenuItem(Title: "Food5", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "1.png"),
                         MenuItem(Title: "Food6", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "2.png"),
                         MenuItem(Title: "Food7", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "3.png"),
                         MenuItem(Title: "Food8", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "4.png"),
                         MenuItem(Title: "Food9", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "1.png"),
                         MenuItem(Title: "Food10", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "2.png"),
                         MenuItem(Title: "Food11", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "3.png"),
                         MenuItem(Title: "Food12", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "4.png")]
    
    @Published var DrinkMenuItem = [
                         MenuItem(Title: "Drink1", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k1"),
                         MenuItem(Title: "Drink2", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k2"),
                         MenuItem(Title: "Drink3", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k3"),
                         MenuItem(Title: "Drink4", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k4"),
                         MenuItem(Title: "Drink5", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k5"),
                         MenuItem(Title: "Drink6", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k3"),
                         MenuItem(Title: "Drink7", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k1"),
                         MenuItem(Title: "Drink8", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Drink,image: "k4")]
    @Published var DesertMenuItem = [
                         MenuItem(Title: "Dessert1", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Dessert,image: "d1"),
                         MenuItem(Title: "Dessert2", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Dessert,image: "d2"),
                         MenuItem(Title: "Dessert3", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Dessert,image: "d3"),
                         MenuItem(Title: "Dessert4", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Dessert,image: "d4")]
    
                         
    
}
 

