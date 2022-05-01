//
//  AllNewProductView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AllNewProductView: View {
    let allnewproduct: AllNewProduct
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack{
                Image(allnewproduct.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: allnewproduct.red, green:allnewproduct.green, blue: allnewproduct.blue))
            .cornerRadius(12)
            
            Text(allnewproduct.name)
                .font(.title3)
                .fontWeight(.black)
            Text("Rs.\(allnewproduct.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct AllNewProductView_Previews: PreviewProvider {
    static var previews: some View {
        AllNewProductView(allnewproduct: allnewproducts[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
