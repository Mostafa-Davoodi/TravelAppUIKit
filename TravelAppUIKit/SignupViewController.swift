//
//  SignupViewController.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/12/22.
//

import UIKit

class SignupViewController: UIViewController {
	
	var titleValue: String = ""
	
	@IBOutlet weak var userNameTF: UITextField!
	@IBOutlet weak var emailTF: UITextField!
	@IBOutlet weak var passwordTF: UITextField!
	
	@IBOutlet weak var signupBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = titleValue
		
		userNameTF.layer.cornerRadius = 25
		emailTF.layer.cornerRadius = 25
		passwordTF.layer.cornerRadius = 25
		
		signupBtn.layer.cornerRadius = 25
		
	}
	
}
