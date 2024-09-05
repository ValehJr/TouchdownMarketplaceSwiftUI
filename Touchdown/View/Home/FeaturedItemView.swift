//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import SwiftUI

struct FeaturedItemView: View {
   let player:Player
    var body: some View {
	   Image(player.image)
		  .resizable()
		  .scaledToFit()
		  .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FeaturedItemView(player: players[0])
	  .padding()
	  .background(colorBackground)
}
