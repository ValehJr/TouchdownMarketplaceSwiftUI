//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct CategoryItemView: View {
   //MARK: Property

   let category:Category

   //MARK: Body
   var body: some View {
	  Button(action:{} ,label: {
		 HStack(alignment: .center,spacing: 6,content: {
			Image(category.image)
			   .renderingMode(.template)
			   .resizable()
			   .scaledToFit()
			   .frame(width: 30,height: 30,alignment: .center)
			   .foregroundStyle(Color.gray)

			Text(category.name.uppercased())
			   .fontWeight(.light)
			   .foregroundStyle(.gray)
			Spacer()
		 })//Hstack
		 .padding()
		 .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
		 .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
	  })//Button
   }
}

#Preview {
   CategoryItemView(category: categories[0])
	  .padding()
	  .background(colorBackground)
}
