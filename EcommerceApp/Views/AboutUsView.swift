//
//  AboutUsView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5, content:{
            Text("About Us")
                .fontWeight(.heavy)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, -110)
                .ignoresSafeArea(.all, edges: .all)
            Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350.0, height: 250.0, alignment: .topLeading)
                    .clipped()
                  
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .padding()
                .padding(.bottom, 10)
        })
        
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
