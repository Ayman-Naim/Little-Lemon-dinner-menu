//
//  MenuItemView.swift
//  Little lemon Dinner menu
//
//  Created by ayman on 13/06/2023.
//

import SwiftUI

struct MenuItemView: View {
    @State var showFilter = false
    @State var titleOffsite :CGFloat =  0
    @State var offset : CGFloat = 0
    @State var startoffset :CGFloat = 0
    @State var menueItemClicked = false
    
    let threcolumnsGrid = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var menue = MenuViewViewModel()
    var body: some View {
        NavigationView{
             
            ScrollView{
                                        Text("")
                    .navigationTitle("Menu")
                
                                      
                                        .navigationBarItems(trailing:
                                                                Button(action: {
                                            self.showFilter = true
                
                                        })
                                                            {
                                            Image(systemName: "slider.horizontal.3")
                                                .font(.system(size: 22))
                                        }
                                        ).sheet(isPresented: $showFilter, onDismiss: {
                                            self.showFilter = false
                
                                        })
                                        {
                                            NavigationView{
                                                MenuItemsOptionView(showFilter: $showFilter)
                                            }
                                        }
                                    
                VStack{
                    
                    Text(menuCatagury.Food.rawValue).font(.title).padding(.trailing,305)
                    LazyVGrid(columns: threcolumnsGrid ,alignment: .center,spacing: 12){
                        
                        ForEach($menue.FoodMenueItem, id:\.id) { result in
                            
                            NavigationLink{
                                MenuItemDetailsView(ItemChoesd: result)
                                
                            }label:{
                                
                                menue_item_view(result: result)
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    Text(menuCatagury.Drink.rawValue).font(.title2).padding(.trailing,305)
                    LazyVGrid(columns: threcolumnsGrid ,alignment: .center,spacing: 12){
                        
                        ForEach($menue.DrinkMenuItem) { result in
                            NavigationLink{
                                MenuItemDetailsView(ItemChoesd: result)
                                
                            }label:{
                                
                                menue_item_view(result: result)
                            }
                        }
                        
                    }.padding()
                    
                    
                    Text(menuCatagury.Dessert.rawValue).font(.title2)
                    
                        .frame(width: 65)
                    //.minimumScaleFactor(0.01)
                    //.lineLimit(1)
                        .padding(.trailing,305)
                    
                    LazyVGrid(columns: threcolumnsGrid ,alignment: .center,spacing: 12){
                        
                        ForEach($menue.DesertMenuItem) { result in
                            NavigationLink{
                                MenuItemDetailsView(ItemChoesd: result)
                                
                            }label:{
                                
                                menue_item_view(result: result)
                            }
                        }
                    }
                    
                }
                    
                
            }
        }
        
        
        
        

               
                       
            
        
    }
    
 
}




struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}



