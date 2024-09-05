//
//  CategooryGridView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
	   ScrollView(.horizontal,showsIndicators: false) {
		  LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing, pinnedViews: [],content: {
			 Section(
			   header: SectionView(rotateClockwise: false),
			   footer: SectionView(rotateClockwise: true)) {
				ForEach(categories) {category in
				   CategoryItemView(category: category)
				}
			 }
		  })//HGrid
		  .frame(height: 140)
		  .padding(.horizontal,15)
		  .padding(.vertical,10)
	   }//ScrollView
    }
}

#Preview {
    CategoryGridView()
	  .padding()
	  .background(colorBackground)
}
