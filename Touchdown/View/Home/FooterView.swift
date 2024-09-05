//
//  FooterView.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 07.06.24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
	   VStack(alignment: .center,spacing: 10, content: {
		  Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
			 .foregroundStyle(.gray)
			 .multilineTextAlignment(.center)
			 .layoutPriority(2)

		  Image("logo-lineal")
			 .renderingMode(.template)
			 .foregroundStyle(.gray)
			 .layoutPriority(0)

		  Text("Copyright © Valeh Ismayilov\nAll right preserved")
			 .font(.footnote)
			 .fontWeight(.bold)
			 .multilineTextAlignment(.center)
			 .foregroundStyle(.gray)
			 .layoutPriority(1)
	   })
    }
}

#Preview {
    FooterView()
	  .background(colorBackground)
}
