//
//  AllNewComView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AllNewComView: View {
    @EnvironmentObject var allnewproductshop:AllNewProductShop
    @EnvironmentObject var allnewshop: AllNewShop
    var body: some View {
        ZStack{
            if allnewshop.showingProduct == true &&
                allnewproductshop.showingProduct == false &&
                allnewproductshop.selectedProduct == nil{
               
                VStack(spacing: 0){
                    NavAllNewProView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        //.padding(.bottom, 120)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack{
                            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 15, content: {
                                ForEach(allnewproducts) { allnewproduct in
                                    AllNewProductView(allnewproduct: allnewproduct)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                allnewproductshop.selectedProduct = allnewproduct
                                                allnewproductshop.showingProduct = true
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
                if(allnewshop.showingProduct == true){
                    AllNewDetailProView()
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

struct AllNewComView_Previews: PreviewProvider {
    static var previews: some View {
        AllNewComView()
            .environmentObject(AllNewProductShop())
            .environmentObject(AllNewShop())
    }
}
