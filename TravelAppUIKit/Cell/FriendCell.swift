//
//  FriendCell.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/26/22.
//

import UIKit

class FriendCell: UITableViewCell {
	
	@IBOutlet weak var ageLabel: UILabel!
	@IBOutlet weak var locationLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	
	@IBOutlet weak var avatarView: UIImageView!
	
	func updateView(user: User) {
		nameLabel.text = user.nickName
		locationLabel.text = user.location
		ageLabel.text = user.age
		
		avatarView.image = user.image
	}
	
}
