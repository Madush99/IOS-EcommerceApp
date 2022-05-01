//
//  HomeView.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import SwiftUI
import Firebase

struct HomeView: View {
    @EnvironmentObject var shop: Shop
    @EnvironmentObject var newshop: NewShop
    @EnvironmentObject var allnewshop: AllNewShop
    @EnvironmentObject var allfeaturedshop: AllFeaturedShop

    var body: some View {
        ZStack{
            if shop.showingProduct == false && shop.selectedProduct == nil && newshop.showingProduct == false && newshop.selectedProduct == nil && allnewshop.showingProduct == false &&
                allfeaturedshop.showingProduct == false{
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    //Spacer()
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            SliderTabView()
                                .padding(.vertical, 40)
                                .scaledToFit()
                            TitleHeaderView()
                           
        
                            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 15, content: {
                                ForEach(products) { product in
                                    FeaturedProductsView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            } )
                            .padding(15)
                            
                            NewProductsHeader()
                            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 15, content: {
                                ForEach(newproducts) { newproduct in
                                    NewProductsView(newproduct: newproduct)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                newshop.selectedProduct = newproduct
                                                newshop.showingProduct = true
                                            }
                                        }
                                }
                            } )
                            .padding(15)
                            
                        }
                    })
                    BottomNavigationView()
                        .padding()
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
//                            Button("Log Out"){
//                                FBAuth.logout{ (result) in
//                                    print("Logged Out")
//                                }
//                            }
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                if(shop.showingProduct == true){
                    featuredProductDetailView()
                }else if(newshop.showingProduct == true){
                    NewProductDetailView()
                }else if (allnewshop.showingProduct == true){
                    AllNewComView()
                }else if(allfeaturedshop.showingProduct == true){
                    AllfeaturedComView()
                }
               
            }
        }
        .ignoresSafeArea(.all, edges: .top)
      
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13")
            .environmentObject(NewShop())
            .environmentObject(Shop())
            .environmentObject(AllNewShop())
            .environmentObject(AllFeaturedShop())
            
    }
}
