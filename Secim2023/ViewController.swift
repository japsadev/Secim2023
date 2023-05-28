//
//  ViewController.swift
//  Secim2023
//
//  Created by Salih Yusuf Göktaş on 28.05.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var birinciAdayOyLabel: UILabel!
	@IBOutlet weak var ikinciAdayOyLabel: UILabel!
	@IBOutlet weak var gecersizOyLabel: UILabel!
	@IBOutlet weak var gecerliOyLabel: UILabel!
	@IBOutlet weak var toplamOyLabel: UILabel!
	
	@IBOutlet weak var gecersizOyLabelStyle: UILabel!
	@IBOutlet weak var gecersizLabelStyle: UILabel!
	@IBOutlet weak var gecerliLabelStyle: UILabel!
	@IBOutlet weak var toplamLabelStyle: UILabel!
	
	@IBOutlet weak var birinciAdayOyArttırStyle: UIButton!
	@IBOutlet weak var birinciAdayOyAzaltStyle: UIButton!
	@IBOutlet weak var ikinciAdayOyArttırStyle: UIButton!
	@IBOutlet weak var ikinciAdayOyAzaltStyle: UIButton!
	@IBOutlet weak var gecersizOyArttırStyle: UIButton!
	@IBOutlet weak var gecersizOyAzaltStyle: UIButton!
	
	@IBOutlet weak var imageOne: UIImageView!
	@IBOutlet weak var imageTwo: UIImageView!
	@IBOutlet weak var imageThree: UIImageView!
	@IBOutlet weak var imageFour: UIImageView!
	@IBOutlet weak var imageFive: UIImageView!
	
	@IBOutlet weak var adayAdLabel1: UILabel!
	@IBOutlet weak var adayAdLabel2: UILabel!
	
	var count1 = 0
	var count2 = 0
	var count3 = 0
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		buttonStyle()
		
		func buttonStyle() {
			
			imageOne.layer.borderWidth = 5
			imageOne.layer.masksToBounds = false
			imageOne.layer.borderColor = UIColor.init(red: 0/255, green: 80/255, blue: 148/255, alpha: 1).cgColor
			imageOne.layer.cornerRadius = imageOne.frame.height/2
			imageOne.clipsToBounds = true
			
			imageTwo.layer.borderWidth = 5
			imageTwo.layer.masksToBounds = false
			imageTwo.layer.borderColor = UIColor.init(red: 192/255, green: 28/255, blue: 3/255, alpha: 1).cgColor
			imageTwo.layer.cornerRadius = imageTwo.frame.height/2
			imageTwo.clipsToBounds = true
			
			imageThree.layer.cornerRadius = 5
			imageThree.clipsToBounds = true
			
			imageFour.layer.cornerRadius = 5
			imageFour.clipsToBounds = true
			
			imageFive.layer.cornerRadius = 5
			imageFive.clipsToBounds = true
			
			
			adayAdLabel1.layer.masksToBounds = true
			adayAdLabel1.layer.cornerRadius = 5
			
			adayAdLabel2.layer.masksToBounds = true
			adayAdLabel2.layer.cornerRadius = 5
			
			
			
			gecersizOyLabelStyle.layer.masksToBounds = true
			gecersizOyLabelStyle.layer.cornerRadius = 5
			
			
			gecersizLabelStyle.layer.masksToBounds = true
			gecersizLabelStyle.layer.cornerRadius = 5
			
			
			gecerliLabelStyle.layer.masksToBounds = true
			gecerliLabelStyle.layer.cornerRadius = 5
			
			
			toplamLabelStyle.layer.masksToBounds = true
			toplamLabelStyle.layer.cornerRadius = 5
			
			
			birinciAdayOyLabel.layer.masksToBounds = true
			birinciAdayOyLabel.layer.cornerRadius = 5
			
			
			ikinciAdayOyLabel.layer.masksToBounds = true
			ikinciAdayOyLabel.layer.cornerRadius = 5
			
			
			birinciAdayOyArttırStyle.layer.cornerRadius = 5
			birinciAdayOyAzaltStyle.layer.cornerRadius = 5
			ikinciAdayOyArttırStyle.layer.cornerRadius = 5
			ikinciAdayOyAzaltStyle.layer.cornerRadius = 5
			gecersizOyArttırStyle.layer.cornerRadius = 5
			gecersizOyAzaltStyle.layer.cornerRadius = 5
			
		
		}
		
		
	}
	@IBAction func birinciAdayOyArttır(_ sender: Any) {
		count1 = count1 + 1
		birinciAdayOyLabel.text = "\(count1)"
		gecerliOyLabel.text = "\(count1+count2)"
		toplamOyLabel.text = "\(count1+count2)"
	}
	@IBAction func birinciAdayOyAzalt(_ sender: Any) {
		count1 = count1 - 1
		birinciAdayOyLabel.text = "\(count1)"
		gecerliOyLabel.text = "\(count1+count2)"
		toplamOyLabel.text = "\(count1+count2)"
	}
	@IBAction func ikinciAdayOyArttır(_ sender: Any) {
		count2 = count2 + 1
		ikinciAdayOyLabel.text = "\(count2)"
		gecerliOyLabel.text = "\(count1+count2)"
		toplamOyLabel.text = "\(count1+count2)"
	}
	@IBAction func ikinciAdayOyAzalt(_ sender: Any) {
		count2 = count2 - 1
		ikinciAdayOyLabel.text = "\(count2)"
		gecerliOyLabel.text = "\(count1+count2)"
		toplamOyLabel.text = "\(count1+count2)"
	}
	@IBAction func gecersizOyArttır(_ sender: Any) {
		count3 = count3 + 1
		gecersizOyLabel.text = "\(count3)"
		toplamOyLabel.text = "\(count1+count2+count3)"
	}
	@IBAction func gecersizOyAzalt(_ sender: Any) {
		count3 = count3 - 1
		gecersizOyLabel.text = "\(count3)"
		toplamOyLabel.text = "\(count1+count2+count3)"
	}
		
	
}

