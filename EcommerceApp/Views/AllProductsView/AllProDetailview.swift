//
//  AllProDetailview.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AllProDetailview: View {
    @EnvironmentObject var allproductshop: AllProductShop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationHeaderProduct()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
           // HeaderproductView()
            
            AllProductTopComView()
                .padding(.horizontal)
                .zIndex(1)
                .padding(.top, 40)
                
            VStack(alignment: .leading, spacing: 0, content: {
                SizesView()
                    .padding(.top, -50)
                    .padding(.bottom, 10)
                
                Text("Product Description")
                    .fontWeight(.heavy)

                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    Text(allproductshop.selectedProduct?.description ?? allFeatureProducts.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 10)
                })
                .padding(.bottom, 10)
                QuantityView()
                    .padding(.bottom, 10)
                Spacer()
                BottomNavigationView()
                    .padding(.bottom, 20)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
       
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: allproductshop.selectedProduct?.red ?? allFeatureProducts.red,
                green: allproductshop.selectedProduct?.green ?? allFeatureProducts.green,
                blue: allproductshop.selectedProduct?.blue ?? allFeatureProducts.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct AllProDetailview_Previews: PreviewProvider {
    static var previews: some View {
        AllProDetailview()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(AllProductShop())
    }
}
