//
//  HeaderproductView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct HeaderproductView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(featuredProduct.name)
                .font(.largeTitle)
        })
        .foregroundColor(.white)
    }
}

struct HeaderproductView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderproductView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
