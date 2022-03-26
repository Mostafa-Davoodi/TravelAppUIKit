//
//  Serializer.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 3/12/22.
//

import UIKit

class Serializer {
	
	static func serialize(user: UserDM) -> String? {
		let encoder = JSONEncoder()
		encoder.outputFormatting = .prettyPrinted
		do {
			let jsonData = try encoder.encode(user)
			let jsonString = String(data: jsonData, encoding: .utf8)
			return jsonString
		} catch {
			return nil
		}
	}
	
	static func deserialize(jsonString: String) -> UserDM? {
		if let jsonData = jsonString.data(using: .utf8) {
			let decoder = JSONDecoder()
			
			do {
				return try decoder.decode(UserDM.self, from: jsonData)
			} catch {
				return nil
			}
			
		} else {
			return nil
		}
	}
	
	static func deserializeArray(jsonString: String) -> [UserDM] {
		if let jsonData = jsonString.data(using: .utf8) {
			let decoder = JSONDecoder()
			
			do {
				return try decoder.decode([UserDM].self, from: jsonData)
			} catch {
				return []
			}
		} else {
			return []
		}
	}
	
	
	static func rawUserJson() -> String {
		return """
{
"first_name": "Mostafa",
"last_name": "Davoodi",
"country": "Canada"
}
"""
	}
	
	static func rawUserArrayJson() -> String {
		return """
[
{
	"first_name": "John",
	"last_name": "Doe",
	"country": "Canada"
},
{
 "first_name": "Mostafa",
 "last_name": "Davoodi",
 "country": "Canada"
}
]
"""
	}
	
	
	
}

struct UserDM: Codable {
	var firstName: String
	var lastName: String
	var country: String
	
	enum CodingKeys: String, CodingKey {
		case firstName = "first_name"
		case lastName = "last_name"
		case country
		
	}
	
	
}
