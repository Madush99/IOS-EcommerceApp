//
//  featuredProductDetailView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct featuredProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationHeaderProduct()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
           // HeaderproductView()
            
            TopComponentView()
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
                    
                    Text(shop.selectedProduct?.description ?? featuredProduct.description)
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
                red: shop.selectedProduct?.red ?? featuredProduct.red,
                green: shop.selectedProduct?.green ?? featuredProduct.green,
                blue: shop.selectedProduct?.blue ?? featuredProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct featuredProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        featuredProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
