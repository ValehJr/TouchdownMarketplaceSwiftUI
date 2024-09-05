//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 07.06.24.
//

import SwiftUI

struct NavigationBarView: View {
   //MARK: Properties
   @State private var isAnimated:Bool = false
   //MARK: Body
   var body: some View {
	  HStack {
		 Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
			Image(systemName: "magnifyingglass")
			   .font(.title)
			   .foregroundStyle(.black)
		 })//Button

		 Spacer()

		 LogoView()
			.opacity(isAnimated ? 1 : 0)
			.offset(x: 0,y: isAnimated ? 0 : -25)
			.onAppear(perform: {
			   withAnimation(.easeOut(duration: 0.5)) {
				  isAnimated.toggle()
			   }
			})

		 Spacer()

		 Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
			ZStack {
			   Image(systemName: "cart")
				  .font(.title)
				  .foregroundStyle(.black)

			   Circle()
				  .fill(Color.red)
				  .frame(width: 14,height: 14,alignment: .center)
				  .offset(x:13,y:-10)
			}
		 })//Button
	  }//Hstack
   }
}
//MARK: Preview
#Preview {
   NavigationBarView()
	  .padding()
}
