//
//  Constant.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 07.06.24.
//

import SwiftUI

//Data
let players:[Player] = Bundle.main.decode("player.json")
let categories:[Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let brands:[Brand] = Bundle.main.decode("brand.json")
let sampleProduct:Product = products[0]

//Colors
let colorBackground:Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//Func
func getSafeAreaTopInset() -> CGFloat {
   guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
		 let window = windowScene.windows.first else {
	  return 0
   }
   return window.safeAreaInsets.top
}

//Layout
let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout: [GridItem] {
   return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
