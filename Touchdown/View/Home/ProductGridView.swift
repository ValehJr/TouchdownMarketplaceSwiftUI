//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct ProductGridView: View {
   @EnvironmentObject var shop:Shop
    var body: some View {
	   LazyVGrid(columns: gridLayout,spacing: 15, content : {
		  ForEach(products) { product in
			 ProductItemView(product: product)
				.onTapGesture {
				   feedback.impactOccurred()
				   withAnimation(.easeOut) {
					  shop.selectedProduct = product
					  shop.showingProduct = true
				   }
				}
		  }//Loop
	   })//VGRID
	   .padding(15)
    }
}

#Preview {
    ProductGridView()
	  .environmentObject(Shop())
}
