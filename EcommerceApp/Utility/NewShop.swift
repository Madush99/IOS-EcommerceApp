//
//  NewShop.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-04-30.
//

import Foundation

class NewShop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: NewProduct? = nil
}
