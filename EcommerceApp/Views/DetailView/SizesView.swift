//
//  SizesView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-30.
//

import SwiftUI

struct SizesView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        VStack(alignment: .leading, spacing: 3, content: {
            Text("Sizes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            HStack(alignment: .center, spacing: 5, content: {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {}, label: {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.gray, lineWidth: 2)
                            )
                    })
                }
            })
        })
    }
}

struct SizesView_Previews: PreviewProvider {
    static var previews: some View {
        SizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
