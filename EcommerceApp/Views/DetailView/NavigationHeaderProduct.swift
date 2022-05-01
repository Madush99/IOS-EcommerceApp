//
//  NavigationHeaderProduct.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct NavigationHeaderProduct: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Text("Products  ")
                .foregroundColor(.white)
                .fontWeight(.heavy)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationHeaderProduct_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeaderProduct()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
