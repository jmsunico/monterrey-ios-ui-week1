//
//  ResultsViewController.swift
//  imcCalc
//
//  Created by José-María Súnico on 20160622.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
	var imc : Double = 0
	@IBOutlet weak var resultsViewTitle: UILabel!
	@IBOutlet weak var calculatedIMC: UILabel!
	@IBOutlet weak var explanationIMC: UILabel!
	
	override func viewWillAppear(animated: Bool) {
		self.calculatedIMC.text = String(imc)
	}
	
    override func viewDidLoad() {
		super.viewDidLoad()
		switch imc {
		case 20..<22: self.explanationIMC.text = " You are a bit underweighted: You should consider gaining some weight by exercising yourself and eating healthier!"
		case 22..<24: self.explanationIMC.text = " You are just fine: Just continue doing whatever you are doing, exercising yourself and eating healthy!"
		case 24..<26: self.explanationIMC.text = " You are a bit overweighted: You should consider losing some weight by exercising yourself and eating healthier!"
		
		default: self.explanationIMC.text = " Seriously: change habits and go to a doctor so she can help you!"
		}
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
