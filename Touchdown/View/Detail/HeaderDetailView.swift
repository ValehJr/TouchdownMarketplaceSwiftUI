//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct HeaderDetailView: View {
   @EnvironmentObject var shop:Shop

    var body: some View {
	   VStack(alignment:.leading,spacing: 4,content: {
		  Text("Protective Gear")

		  Text(shop.selectedProduct?.name ?? sampleProduct.name)
			 .font(.largeTitle)
			 .fontWeight(.black)
	   })
	   .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
	  .environmentObject(Shop())
	  .padding()
	  .background(.gray)
}
