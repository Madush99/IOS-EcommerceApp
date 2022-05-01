//
//  AllProductTopComView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AllProductTopComView: View {
    @State private var isAnimating: Bool = false
    @EnvironmentObject var allproductshop: AllProductShop
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            VStack(alignment: .center, spacing: 6, content: {
                Spacer()
                Image(allproductshop.selectedProduct?.image ?? allFeatureProducts.image)
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 0 : -35)
                VStack(alignment: .leading, spacing: 3, content:{
                    Text(allproductshop.selectedProduct?.name ?? allFeatureProducts.name)
                        .fontWeight(.heavy)
                        .font(.system(size: 23))
                    .foregroundColor(.white)
                    .padding(.leading, -130)
                })
               
                HStack(alignment: .center, spacing: 6, content: {
                    Text("code: 1234")
                    Spacer()
                    Text("23 units available")
                    
                })
                .foregroundColor(.white)
                .padding(.bottom, 20)
                HStack(alignment: .center, spacing: 50, content: {
                    Text("Rs.\(allproductshop.selectedProduct?.price ?? allFeatureProducts.price)")
                        .fontWeight(.heavy)
                        .font(.system(size: 20))
                        .scaleEffect(1.35, anchor: .leading)
                    
                    
                    Text("Rs.125 inc. GST")
                        .foregroundColor(.gray)
                })
                .padding(.leading, -90)
               
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            
           
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct AllProductTopComView_Previews: PreviewProvider {
    static var previews: some View {
        AllProductTopComView()
            .environmentObject(AllProductShop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
