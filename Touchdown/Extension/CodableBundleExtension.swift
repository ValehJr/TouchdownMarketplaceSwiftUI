//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Valeh Ismayilov on 08.06.24.
//

import Foundation
extension Bundle {

   func decode<T:Codable> (_ file:String) -> T {
	  guard let url = self.url(forResource: file, withExtension: nil) else {
		 fatalError("Failed to locate \(file) in bundle")
	  }

	  guard let data = try? Data(contentsOf: url) else {
		 fatalError("Failed to load \(file) in bundle")
	  }

	  let decoder = JSONDecoder()

	  guard let decodedData = try? decoder.decode(T.self, from: data) else {
		 fatalError("Failed to decode \(file) in bundle")
	  }

	  return decodedData
   }

}
