//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct RatingsSizesDetailView: View {

   let sizes:[String] = ["XS","S","M","L","XL"]
    var body: some View {
	   HStack(alignment: .top,spacing: 3, content: {
		  VStack(alignment: .leading,spacing: 3, content: {
			 Text("Ratings")
				.font(.footnote)
				.fontWeight(.semibold)
				.foregroundStyle(colorGray)
			 HStack(alignment: .center,spacing: 3, content: {
				ForEach(1...5,id: \.self) { item in
				   Button(action: {}, label: {
					  Image(systemName: "star.fill")
						 .frame(width: 28,height: 28,alignment: .center)
						 .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
						 .foregroundStyle(.white)
				   })//Button
				}//Loop
			 })//Hstack
		  })//VStack

		  Spacer()

		  VStack(alignment: .trailing,spacing: 3, content: {
			 Text("Sizes")
				.font(.footnote)
				.fontWeight(.semibold)
				.foregroundStyle(colorGray)
			 HStack(alignment: .center,spacing: 3, content: {
				ForEach(sizes,id: \.self) { size in
				   Button(action: {}, label: {
					  Text(size)
						 .font(.footnote)
						 .fontWeight(.heavy)
						 .foregroundStyle(colorGray)
						 .frame(width: 28,height: 28,alignment: .center)
						 .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
						 .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 2))
				   })
				  }
				})

		  })//VStack

	   })//HStack
    }
}

#Preview {
    RatingsSizesDetailView()
	  .padding()
}
