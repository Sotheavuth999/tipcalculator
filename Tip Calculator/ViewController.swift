//
//  ViewController.swift
//  Tip Calculator
//
//  Created by SOTHEAVUTH NGUON on 10/7/16.
//  Copyright © 2016 SOTHEAVUTH NGUON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtCostTextOUTLET: UITextField!
    @IBOutlet weak var lblSliderValueLabelOUTLET: UILabel!
    @IBOutlet weak var sldTipAmountSliderOUTLET: UISlider!
    @IBOutlet weak var btnCalculatorButtonOUTLET: UIButton!
    @IBOutlet weak var lblTotalCostLabelOUTLET: UILabel!
    
    var totalCost : Double?
    var tipAmount : Double?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseSliderValueACTION(_ sender: AnyObject) {
        tipAmount = Double(sldTipAmountSliderOUTLET.value)
        lblSliderValueLabelOUTLET.text = String(format: "%0.2f", tipAmount!)
    }
    
    @IBAction func pressCalculateButtonACTION(_ sender: AnyObject) {
        if !((txtCostTextOUTLET.text?.isEmpty)!) {
            let cost = Double(txtCostTextOUTLET.text!)
            calculateTotal(cost: cost!)
            displayCost()
        } else {
            txtCostTextOUTLET.text = "Please, enter the cost!"
        }
        txtCostTextOUTLET.text?.removeAll()
    }
    
    func calculateTotal(cost : Double) {
        let tip = (tipAmount! / 100) * cost
        totalCost = tip + cost
    }
    
    func displayCost() {
        lblTotalCostLabelOUTLET.text = String(format: "%0.2f", totalCost!)
    }

}

