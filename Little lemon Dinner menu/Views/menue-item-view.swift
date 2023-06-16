//
//  menue-item-view.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 16/06/2023.
//

import SwiftUI

struct menue_item_view: View {
   
    @Binding var result : MenuItem
   
    var body: some View {
        VStack{
            Image(result.image)
                .resizable()
            
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 115  , height: 115)
            Text(result.Title)
        }
    }
}

struct menue_item_view_Previews: PreviewProvider {
  
    static var previews: some View {
       
     

   
        menue_item_view(result: .constant(MenuItem(Title: "Food1", ingredient: [.Spinach,.Broccoli],id: UUID(),price:13.5 ,Price:13 ,menurCatogry: menuCatagury.Food,image: "1.png")))
        
    }
}
