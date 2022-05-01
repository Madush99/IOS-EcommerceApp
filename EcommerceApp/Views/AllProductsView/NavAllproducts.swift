//
//  NavAllproducts.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct NavAllproducts: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            Text("Featured Products")
                .foregroundColor(.black)
                .fontWeight(.heavy)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
        }
    }
}

struct NavAllproducts_Previews: PreviewProvider {
    static var previews: some View {
        NavAllproducts()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
