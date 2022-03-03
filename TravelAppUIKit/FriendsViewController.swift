//
//  FriendsViewController.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/19/22.
//

import UIKit

class FriendsViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	var data = DataProvider.mockData()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = "Friends List"
		
		
		tableView.delegate = self
		tableView.dataSource = self
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		data = DataProvider.data
		tableView.reloadData()
		
	}
	
	func completionHandler(user: User) {
		// TODO: update your cell later on
	}
}

extension FriendsViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendCell
		
		let userData = data[indexPath.section].1
		cell.updateView(user: userData[indexPath.row])
		
		return cell
		
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return data[section].0
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let userData = data[indexPath.section].1[indexPath.row]
		
//		let alertController = UIAlertController(
//			title: "Hello \(userData.nickName)",
//			message: "\(userData.location)\n\(userData.age)",
//			preferredStyle: .actionSheet
//		)
//
//		let action = UIAlertAction(title: "Cancel", style: .destructive)
//
//		alertController.addAction(action)
//
//		self.navigationController?.present(alertController, animated: true)
		
		let vc = FriendsDetailViewController()
		vc.user = userData
		self.navigationController?.pushViewController(vc, animated: true)
	}
	
	
	
	func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		
		let userData = data[indexPath.section].1[indexPath.row]
		
		let action = UIContextualAction(style: .normal, title: "Favourite") { [weak self] (action, view, completionHandler) in
			self?.completionHandler(user: userData)
			completionHandler(true)
		}
		
		action.backgroundColor = .red
		return UISwipeActionsConfiguration(actions: [action])
		
	}
}

extension FriendsViewController: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return data.count
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data[section].1.count
	}
}
