//
//  MenuItemDetailsView.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 14/06/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    var body: some View {
        VStack{
            Image("Little Lemon logo")
                .resizable(resizingMode: .stretch)
                .aspectRatio( contentMode: .fit)
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
