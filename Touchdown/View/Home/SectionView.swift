//
//  SectionView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct SectionView: View {

   @State var rotateClockwise:Bool
    var body: some View {
	   VStack(spacing: 0,content: {
		  Spacer()
		  Text("Categories".uppercased())
			 .font(.footnote)
			 .fontWeight(.bold)
			 .foregroundStyle(.white)
			 .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))

		  Spacer()
	   })
	   .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
	   .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
	  .previewLayout(.fixed(width: 120, height: 240))
	  .padding()
	  .background(colorBackground)
}
