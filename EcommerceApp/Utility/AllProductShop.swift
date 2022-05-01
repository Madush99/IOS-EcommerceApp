//
//  AllProductShop.swift
//  EcommerceApp
//
//  Created by Madusanka Gajadeera on 2022-05-01.
//

import Foundation
class AllProductShop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: AllProduct? = nil
}
