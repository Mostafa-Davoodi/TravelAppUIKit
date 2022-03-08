//
//  PlaceCell.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 3/5/22.
//

import UIKit
import ElementKit

class PlaceCell: UICollectionViewCell {
	
	lazy var imageView = BaseUIImageView()
	
	lazy var nameLabel: BaseUILabel = {
		let label = BaseUILabel()
		label.textColor = .white
		label.font = UIFont.preferredFont(forTextStyle: .headline)
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setupView()
	}
	
	func setupView() {
		contentView.addSubview(imageView)
		imageView.frame = contentView.frame
		
		imageView.addSubview(nameLabel)
		NSLayoutConstraint.activate([
			nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 20),
			nameLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 20)
		])
		
		
	}
	
}
