//
//  SliderTabView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-26.
//

import SwiftUI

struct SliderTabView: View {
    var body: some View {
        TabView{
            ForEach(sliders){ slider in
                SliderView(slider: slider)
                .padding(.top, 10)
                .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct SliderTabView_Previews: PreviewProvider {
    static var previews: some View {
        SliderTabView()
            .background(Color.gray)
    }
}
