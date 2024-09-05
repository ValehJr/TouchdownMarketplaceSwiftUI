//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct NavigationBarDetailView: View {
   @EnvironmentObject var shop:Shop

    var body: some View {
	   HStack {
		  Button(action: {
			 withAnimation(.easeIn) {
				feedback.impactOccurred()
				shop.selectedProduct = nil
				shop.showingProduct = false
			 }
		  }, label: {
			 Image(systemName: "chevron.left")
				.font(.title)
				.foregroundStyle(.white)
		  })
		  Spacer()
		  Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
			 Image(systemName: "cart")
				.font(.title)
				.foregroundStyle(.white)
		  })
	   }
    }
}

#Preview {
    NavigationBarDetailView()
	  .environmentObject(Shop())
	  .padding()
	  .background(Color.gray)
}
