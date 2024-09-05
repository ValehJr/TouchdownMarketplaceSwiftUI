//
//  ContentView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 07.06.24.
//

import SwiftUI

struct ContentView: View {
   //MARK: Properties
   @EnvironmentObject var shop:Shop

   //MARK: Body

   var body: some View {
	  ZStack {
		 if shop.showingProduct == false && shop.selectedProduct == nil {
			VStack(spacing:0,content:  {
			   NavigationBarView()
				  .padding(.horizontal,15)
				  .padding(.bottom)
				  .padding(.top,getSafeAreaTopInset())
				  .background(.white)
				  .shadow(color:.black.opacity(0.05),radius: 5,x:0,y:5)

			   ScrollView(.vertical,showsIndicators: false,content: {
				  VStack(spacing:0 ,content: {
					 
					 FeaturedTabView()
						.frame(minHeight: 256)
						.padding(.vertical,10)

					 CategoryGridView()

					 TitleView(title: "Helmets")
					 ProductGridView()

					 TitleView(title: "Brands")
					 BrandGridView()

					 FooterView()
						.padding(.horizontal)
				  })
			   })//ScrollView
			})//Vstack
			.background(colorBackground.ignoresSafeArea(.all,edges: .all))
		 } else {
			ProductDetailView()
		 }
	  }//Zstack
	  .ignoresSafeArea(.all,edges: .top)
   }
}
//MARK: Preview
#Preview {
   ContentView()
	  .environmentObject(Shop())
}
