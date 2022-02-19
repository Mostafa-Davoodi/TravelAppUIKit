//
//  FriendsViewController.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/19/22.
//

import UIKit

class FriendsViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	let friendsList: [String] = [
		"Alexander Valley",
		"Anderson Valley",
		"Atlas Peak",
		"Bennett Valley",
		"Calistoga"
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = "Friends List"
		
		
		tableView.delegate = self
		tableView.dataSource = self
		
	}
	
}

extension FriendsViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
		
		if cell == nil {
			cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
		}
		
		cell?.textLabel?.text = friendsList[indexPath.row]
		
		return cell!
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		// TODO: will be implemented later
	}
}

extension FriendsViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return friendsList.count
	}
}
