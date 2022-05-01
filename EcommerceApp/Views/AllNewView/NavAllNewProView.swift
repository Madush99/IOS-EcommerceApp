//
//  NavAllNewProView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct NavAllNewProView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            Text("New Products")
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

struct NavAllNewProView_Previews: PreviewProvider {
    static var previews: some View {
        NavAllNewProView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
