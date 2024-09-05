//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct AddToCartDetailView: View {
   @EnvironmentObject var shop:Shop

   var body: some View {
	  Button(action: {
		 feedback.impactOccurred()
	  }, label: {
		 Spacer()
		 Text("Add to cart".uppercased())
			.font(.system(.title2,design: .rounded))
			.fontWeight(.bold)
			.foregroundStyle(.white)
		 Spacer()
	  })//Button
	  .padding(15)
	  .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue))
	  .clipShape(Capsule())
   }
}

#Preview {
   AddToCartDetailView()
	  .environmentObject(Shop())
	  .padding()
}
