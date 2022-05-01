//
//  AllfeaturedComView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI
import Firebase

struct AllfeaturedComView: View {
    @EnvironmentObject var allproductshop: AllProductShop
    @EnvironmentObject var allfeaturedshop: AllFeaturedShop
    var body: some View {
        ZStack{
            if allfeaturedshop.showingProduct == true &&
                allproductshop.showingProduct == false &&
                allproductshop.selectedProduct == nil{
               
                VStack(spacing: 0){
                    NavAllproducts()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        //.padding(.bottom, 120)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack{
                            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 15, content: {
                                ForEach(allfeaturedproducts) { allfeaturedproduct in
                                    AllFeaturedProductView(allfeaturedproduct: allfeaturedproduct)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                allproductshop.selectedProduct = allfeaturedproduct
                                                allproductshop.showingProduct = true
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
            } else {
                if(allproductshop.showingProduct == true){
                    AllProDetailview()
                }
//                }else if(newshop.showingProduct == true){
//                    NewProductDetailView()
//                }else if (allnewshop.showingProduct == true){
//                    AllNewProductView()
//                }else if(allfeaturedshop.showingProduct == true){
//                    AllfeaturedComView()
//                }
            }
            
        }
        .ignoresSafeArea(.all, edges: .top)
        
    }
}

struct AllfeaturedComView_Previews: PreviewProvider {
    static var previews: some View {
        AllfeaturedComView()
            .environmentObject(AllFeaturedShop())
            .environmentObject(AllProductShop())
    }
}
