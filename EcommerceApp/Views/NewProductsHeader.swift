//
//  NewProductsHeader.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-28.
//

import SwiftUI

struct NewProductsHeader: View {
    @EnvironmentObject var allnewshop: AllNewShop
    var body: some View {
        
        HStack{
           Text("New Products")
                .font(.system(size: 25))
                .fontWeight(.heavy)
            Spacer()
            
            Button(action: {
                withAnimation(.easeIn){
                    allnewshop.showingProduct = true
                    
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

struct NewProductsHeader_Previews: PreviewProvider {
    static var previews: some View {
        NewProductsHeader()
            .environmentObject(AllNewShop())
    }
}
