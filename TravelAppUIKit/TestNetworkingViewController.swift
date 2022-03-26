//
//  TestNetworkingViewController.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 3/12/22.
//

import UIKit
import ElementKit

class TestNetworkingViewController: UIViewController {
	
	lazy var button: BaseUIButton = {
		let bt = BaseUIButton()
		bt.setTitle("Test Netwokring", for: .normal)
		bt.backgroundColor = .green
		bt.addTarget(self, action: #selector(testNetworkingFunctionality), for: .touchUpInside)
		bt.layer.cornerRadius = 30
		return bt
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .lightGray
		title = "TEST"
		
		view.addSubview(button)
		NSLayoutConstraint.activate([
			button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			button.heightAnchor.constraint(equalToConstant: 60),
			button.widthAnchor.constraint(equalToConstant: 180),
		])
	}
	
	@objc func testNetworkingFunctionality() {
		// TODO: do networking flow here
		
		// #1
//		let jsonData = Serializer.rawUserJson()
//		if let user = Serializer.deserialize(jsonString: jsonData) {
//			print("user with first name \(user.firstName)")
//		} else {
//			print("couldn't decode data")
//		}
		
		
		// #2
//		let jsonData = Serializer.rawUserArrayJson()
//		let users = Serializer.deserializeArray(jsonString: jsonData)
//		print("length of array is: \(users.count)")
//
//		for user in users {
//			print("user first name is \(user.firstName)")
//		}
		
		// #3
//		let user = UserDM(firstName: "Mostafa", lastName: "Davoodi", country: "Canada")
//		if let json = Serializer.serialize(user: user) {
//			print("json data is ")
//			print(json)
//		}
		
		// #4
		Networking.makeMockApi()
		
		
	}
	
}
