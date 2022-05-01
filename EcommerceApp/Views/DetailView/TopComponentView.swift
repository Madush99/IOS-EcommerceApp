//
//  TopComponentView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct TopComponentView: View {
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        
        HStack(alignment: .center, spacing: 6, content: {
            
            VStack(alignment: .center, spacing: 6, content: {
                Spacer()
                Image(shop.selectedProduct?.image ?? featuredProduct.image)
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 0 : -35)
                VStack(alignment: .leading, spacing: 3, content:{
                    Text(shop.selectedProduct?.name ?? featuredProduct.name)
                        .fontWeight(.heavy)
                        .font(.system(size: 23))
                    .foregroundColor(.white)
                    .padding(.leading, -120)
                })
               
                HStack(alignment: .center, spacing: 6, content: {
                    Text("code: 1234")
                    Spacer()
                    Text("23 units available")
                    
                })
                .foregroundColor(.white)
                .padding(.bottom, 20)
                HStack(alignment: .center, spacing: 50, content: {
                    Text("Rs.\(shop.selectedProduct?.price ?? featuredProduct.price)")
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

struct TopComponentView_Previews: PreviewProvider {
    static var previews: some View {
        TopComponentView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
