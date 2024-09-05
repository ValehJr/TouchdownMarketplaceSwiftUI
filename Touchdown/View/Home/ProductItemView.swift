//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct ProductItemView: View {

   let product:Product
    var body: some View {
	   VStack(alignment:.leading,spacing: 6,content: {
		  ZStack {
			 Image(product.image)
				.resizable()
				.scaledToFit()
				.padding(10)
		  }//ZStack
		  .background(Color(red: product.red, green: product.green, blue: product.blue))
		  .clipShape(RoundedRectangle(cornerRadius: 12))
		  Text(product.name)
			 .font(.title3)
			 .fontWeight(.black)
		  Text(product.formatedPrice)
			 .fontWeight(.semibold)
			 .foregroundStyle(.gray)
	   })//VStack
    }
}

#Preview {
    ProductItemView(product: products[0])
	  .padding()
	  .background(colorBackground)
}
