//
//  TitleHeaderView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-27.
//

import SwiftUI

struct TitleHeaderView: View {
    @EnvironmentObject var allfeaturedShop: AllFeaturedShop
    var body: some View {
        HStack{
           Text("Featured Products")
                .font(.system(size: 25))
                .fontWeight(.heavy)
            Spacer()
            Button(action: {
                withAnimation(.easeIn){
                    allfeaturedShop.showingProduct = true
                    
                }
            }, label: {
                Text("View All")
                    .foregroundColor(.black)
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

struct TitleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TitleHeaderView()
            .environmentObject(AllFeaturedShop())
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
