//
//  MenuItemsOptionView.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 14/06/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var showFilter :Bool
    var body: some View {
        NavigationView{
            
            List{
                
             //   Text("Filter").font(.title)
                
                
                Section(header: Text("SELECTED CATEGORIES")){
                    Text(menuCatagury.Food.rawValue)
                    Text(menuCatagury.Drink.rawValue)
                    Text(menuCatagury.Dessert.rawValue)
                }
                
                Section(header: Text("SORT BY")){
                    Text(SortBy.MostPopular.rawValue)
                    Text(SortBy.price.rawValue)
                    Text(SortBy.A_Z.rawValue)
                }
            }.listStyle(.grouped)
            
            .navigationBarItems(trailing: Button(action: {
                self.showFilter = false
            }, label: {
                Text("Done")
            })
            )
            
        .navigationTitle("Filter")
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView(showFilter: .constant(true))
    }
}
