//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 07.06.24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
			  .environmentObject(Shop())
        }
    }
}
