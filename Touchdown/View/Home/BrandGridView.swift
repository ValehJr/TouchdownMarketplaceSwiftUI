//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
	   ScrollView(.horizontal,showsIndicators: false,content:  {
		  LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
			 ForEach(brands) {brand in
				BrandItemView(brand: brand)
			 }

		  })//Grid
		  .frame(height: 200)
		  .padding(15)
	   })//ScrollView

    }
}

#Preview {
    BrandGridView()
	  .background(colorBackground)
}
