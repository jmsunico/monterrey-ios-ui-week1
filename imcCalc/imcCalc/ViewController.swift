//
//  ViewController.swift
//  imcCalc
//
//  Created by José-María Súnico on 20160622.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var labelHeight: UILabel!
	@IBOutlet weak var inputHeight: UITextField!
	
	@IBOutlet weak var labelWeight: UILabel!
	@IBOutlet weak var inputWeight: UITextField!
	
	var imc : Double = 0
	
	@IBAction func calcIMC(sender: AnyObject) {
		let weight : Double = Double(self.inputWeight.text!)!
		let height : Double = Double(self.inputHeight.text!)!
		self.imc = weight / height / height
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let nextView = segue.destinationViewController as! ResultsViewController
		nextView.imc = self.imc
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

