//
//  MenuItemDetailsView.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 14/06/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    @Binding var ItemChoesd : MenuItem
    var body: some View {
        VStack(spacing: 8){
         
            Image("Little Lemon logo")
                .resizable()
                .scaledToFit()
                

            VStack{

                Text("Price").font(.title)
                    .bold()
                    Text(String(ItemChoesd.Price)).font(.title3)

            }
            VStack{
                Text("Ordered").font(.title)
                    .bold()
                Text(String(ItemChoesd.orderCount) ).font(.title3)

            }
            VStack{
                Text ("Ingredients")
                    .font(.title)
                        .bold()
                ForEach (ItemChoesd.ingredient,id: \.self) { result in
                    Text(result.rawValue).font(.title3)
                    
                }
            }
            
        }.navigationTitle(ItemChoesd.Title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(ItemChoesd: .constant(MenuItem(Title: "Food1", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "1.png")))
    }
}

