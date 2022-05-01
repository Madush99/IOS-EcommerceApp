//
//  Constants.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-25.
//

import SwiftUI

let sliders: [Slider] = Bundle.main.decode("slider.json")
let products: [Product] = Bundle.main.decode("featuredProduct.json")
let newproducts: [NewProduct] = Bundle.main.decode("newproduct.json")
let allfeaturedproducts : [AllProduct] = Bundle.main.decode("product.json")
let allnewproducts : [AllNewProduct] = Bundle.main.decode("allnewproducts.json")
let featuredProduct: Product = products[0]
let newProducts: NewProduct = newproducts[0]
let allFeatureProducts: AllProduct = allfeaturedproducts[0]
let allNewProducts: AllNewProduct = allnewproducts[0]

let colorBackground: Color = Color("ColorBackground")
//let colorGray: Color = Color(UIColor.systemGray4)
