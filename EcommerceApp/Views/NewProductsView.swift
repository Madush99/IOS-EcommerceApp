//
//  NewProductsView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-30.
//

import SwiftUI

struct NewProductsView: View {
    let newproduct: NewProduct
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack{
                Image(newproduct.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: newproduct.red, green:newproduct.green, blue: newproduct.blue))
            .cornerRadius(12)
            
            Text(newproduct.name)
                .font(.title3)
                .fontWeight(.black)
            Text("Rs.\(newproduct.price)")
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

struct NewProductsView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductsView(newproduct: newproducts[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
