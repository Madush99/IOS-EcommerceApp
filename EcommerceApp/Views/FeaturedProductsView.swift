//
//  FeaturedProductsView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-27.
//

import SwiftUI

struct FeaturedProductsView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green:product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            Text("Rs.\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Text("ADD TO CART")
                .padding(.vertical, 15)
                .frame(width: 165, height: 35)
                .background(Color.red)
                .cornerRadius(8)
                .foregroundColor(.white)
                .padding(.top, 10)
        })
    }
}

struct FeaturedProductsView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedProductsView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
