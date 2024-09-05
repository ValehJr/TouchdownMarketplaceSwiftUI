//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct BrandItemView: View {
   let brand:Brand
    var body: some View {
	   Image(brand.image)
		  .resizable()
		  .scaledToFit()
		  .padding()
		  .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
		  .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
}

#Preview {
   BrandItemView(brand: brands[0])
	  .padding()
	  .background(colorBackground)

}
