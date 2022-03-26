//
//  Networking.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 3/12/22.
//

import Foundation

class Networking {
	
	
	static func makeMockApi() {
		
		let session = URLSession.shared
//		let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
		let url = URL(string: "https://httpbin.org/get")!
	
		
		let task = session.dataTask(with: url) { data, response, error in
			
			// TODO: we should complete our logic here
			if let error = error {
				self.handle(error: error)
			} else {
				if let data = data,
					 let response = response as? HTTPURLResponse,
					 (200...299).contains(response.statusCode) {
					// TODO: we can deserialize data here
					// you should be able to use data to decode json to swift object with codable
					print("working!")
				} else {
					print("not working")
				}
			}
			
		}
		
		task.resume()
		
	}
	
	static func handle(error: Error) {
		print("error is : \(error.localizedDescription)")
	}
	
	
	
}
