//
//  NavigationBarView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-26.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            Image("Logo")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90.0, height:50.0)
                .clipped()
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
