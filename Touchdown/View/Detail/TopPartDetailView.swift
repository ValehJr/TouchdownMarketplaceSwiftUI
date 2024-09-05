//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct TopPartDetailView: View {
   @EnvironmentObject var shop:Shop

   @State private var isAnimating:Bool = false
    var body: some View {
	   HStack(alignment: .center,spacing: 6, content: {
		  VStack(alignment:.leading,spacing: 6,content: {
			 Text("Price")
				.fontWeight(.semibold)
			 Text(shop.selectedProduct?.formatedPrice ??  sampleProduct.formatedPrice)
				.font(.largeTitle)
				.fontWeight(.black)
				.scaleEffect(1.35,anchor: .leading)
		  })//VSTAck
		  .offset(y:isAnimating ? -50 : -75)
		  Spacer()
		  Image(shop.selectedProduct?.image ??  sampleProduct.image)
			 .resizable()
			 .scaledToFit()
			 .offset(y:isAnimating ? 0 : -35)
	   })//Hstack
	   .onAppear(perform: {
		  withAnimation(.easeOut(duration: 0.75)) {
			 isAnimating.toggle()
		  }
	   })
    }
}

#Preview {
    TopPartDetailView()
	  .environmentObject(Shop())
	  .padding()
}
