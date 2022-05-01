//
//  AllFeaturedProductView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AllFeaturedProductView: View {
    let allfeaturedproduct: AllProduct
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack{
                Image(allfeaturedproduct.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: allfeaturedproduct.red, green:allfeaturedproduct.green, blue: allfeaturedproduct.blue))
            .cornerRadius(12)
            
            Text(allfeaturedproduct.name)
                .font(.title3)
                .fontWeight(.black)
            Text("Rs.\(allfeaturedproduct.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct AllFeaturedProductView_Previews: PreviewProvider {
    static var previews: some View {
        AllFeaturedProductView(allfeaturedproduct: allfeaturedproducts[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
