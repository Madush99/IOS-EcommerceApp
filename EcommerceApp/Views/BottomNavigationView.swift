//
//  BottomNavigationView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-30.
//

import SwiftUI

struct BottomNavigationView: View {
    @EnvironmentObject var shop: Shop
    @EnvironmentObject var newshop: NewShop
    @EnvironmentObject var featuredShop: AllFeaturedShop
    @EnvironmentObject var allproductshop : AllProductShop
    @EnvironmentObject var allnewproductshop : AllNewProductShop
    @EnvironmentObject var allnewshop : AllNewShop
    var body: some View {
        
        HStack{
            
            VStack{
                Button(action: {
                    withAnimation(.easeIn){
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                        newshop.selectedProduct = nil
                        newshop.showingProduct = false
                        featuredShop.showingProduct = false
                        allnewshop.showingProduct = false
                        allproductshop.showingProduct = false
                        allproductshop.selectedProduct = nil
                        allnewproductshop.selectedProduct = nil
                        allnewproductshop.showingProduct = false
                    }
                }, label: {
                    Image(systemName: "house")
                        .font(.title)
                        .foregroundColor(.black)
                })
                
                Text("Home")
            }
           
            Spacer()
            
            VStack{
                Button(action: {
                    withAnimation(.easeIn){
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                    }
                }, label: {
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(.black)
                    
                })
                
                Text("My Orders")
            }
            
        
            Spacer()
            VStack{
                Button(action: {
                    withAnimation(.easeIn){
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                    }
                }, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                })
                
                Text("Cart")
            }
         
        Spacer()
            
            VStack{
                Button(action: {
                    withAnimation(.easeIn){
                        FBAuth.logout{ (result) in
                            print("Logged Out")
                        }                    }
                }, label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title)
                        .foregroundColor(.black)
                })
                
                Text("More")
            }
            
        }
    
    }
    
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
            .environmentObject(Shop())
            .environmentObject(NewShop())
            .environmentObject(AllProductShop())
            .environmentObject(AllFeaturedShop())
            .environmentObject(AllNewProductShop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

