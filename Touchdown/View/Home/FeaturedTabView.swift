//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
	   TabView {
		  ForEach(players) {
			 player in
			 FeaturedItemView(player: player)
				.padding(.top,10)
				.padding(.horizontal,10)
		  }
	   }
	   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
	  .background(Color.gray)
}
