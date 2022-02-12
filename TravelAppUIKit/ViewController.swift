//
//  ViewController.swift
//  TravelAppUIKit
//
//  Created by Mostafa Davoodi on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var signupBtn: UIButton!
	@IBOutlet weak var loginBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		
		signupBtn.layer.cornerRadius = 20
		loginBtn.layer.cornerRadius = 20
		
		signupBtn.layer.shadowColor = UIColor.gray.cgColor
		signupBtn.layer.shadowOpacity = 0.5
		
		loginBtn.layer.shadowColor = UIColor.gray.cgColor
		loginBtn.layer.shadowOpacity = 0.5
		
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destinationVC = segue.destination as! SignupViewController
		destinationVC.titleValue = "Custom title"
	}

	@IBAction func loginAction(_ sender: Any) {
		let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginID") as! LoginViewController
		loginVC.titleValue = "Custom login title"
		self.navigationController?.pushViewController(loginVC, animated: true)
	}
	
}

