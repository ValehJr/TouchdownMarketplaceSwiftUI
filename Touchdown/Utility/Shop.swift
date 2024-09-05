//
//  Shop.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct:Bool = false
   @Published var selectedProduct:Product? = nil
}
