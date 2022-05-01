//
//  SliderView.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-25.
//

import SwiftUI

struct SliderView: View {
    let slider: Slider
    var body: some View {
        Image(slider.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(slider: sliders[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
