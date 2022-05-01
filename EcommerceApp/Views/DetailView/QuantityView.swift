//
//  QuantityView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-30.
//

import SwiftUI

struct QuantityView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label:
                    {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100{
                    counter += 1
                }
                
            }, label:
                    {
                Image(systemName: "plus.circle")
            })
            Spacer()
            
            Button(action: {}, label:
                    {
                Text("Add to cart")
                    .font(.system(.title2))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            })
            .padding(15)
            .background(.red)
            
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
