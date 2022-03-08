//
//  DataProvider.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/26/22.
//

import UIKit

class DataProvider {
	
	static func mockPlacesData() -> [Place] {
		return [
			Place(image: UIImage(named: "photo1"), name: "London"),
			Place(image: UIImage(named: "photo2"), name: "Roma"),
			Place(image: UIImage(named: "photo1"), name: "Vancouver"),
			Place(image: UIImage(named: "photo2"), name: "Toronto"),
		]
	}
	
	
	static var data = [(String, [User])]()
	
	static func mockData() -> [(String, [User])] {
		
		var aSection: [User] = []
		var bSection: [User] = []
		var cSection: [User] = []
		
		aSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Alexander Valley",
				location: "Vancouver",
				age: "29"
			)
		)
		
		aSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Alex Stanton",
				location: "Vancouver",
				age: "32"
			)
		)
		
		bSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Brian seif",
				location: "Montreal",
				age: "40"
			)
		)
		
		bSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Benika Stanton",
				location: "Toronto",
				age: "23"
			)
		)
		
		bSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Benita Stanton",
				location: "Vancouver",
				age: "25"
			)
		)
		
		cSection.append(
			User(
				image: UIImage(named: "avatar"),
				nickName: "Celin leon",
				location: "Vancouver",
				age: "29"
			)
		)
		
		data = [
			("A", aSection),
			("B", bSection),
			("C", cSection),
		]
		
		return data
	}
}
