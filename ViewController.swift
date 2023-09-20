//
//  ViewController.swift
//  EmreDeniz_301371047_MAPD714_Assign1
//
//  Created by Emre Deniz on 2023-09-18.
//

import UIKit

class ViewController: UIViewController {
    
    // input fields
    @IBOutlet weak var inputPrincipal: UITextField!
    @IBOutlet weak var inputTime: UITextField!
    @IBOutlet weak var inputRate: UITextField!
    
    // output fields
    @IBOutlet weak var outputInterest: UITextField!
    @IBOutlet weak var outputAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Clear button actions
    @IBAction func btnClearClicked(_ sender: Any) {
        // Reset input fields
        inputPrincipal.text = "";
        inputTime.text = "";
        inputRate.text = ""
        
        // Reset output fields
        outputInterest.text = "";
        outputAmount.text = "";
    }
    
    // Calculate button actions
    @IBAction func btnCalculateClicked(_ sender: Any) {
        let principal = Double(inputPrincipal.text!);
        let time = Double(inputTime.text!);
        let rate = Double(inputRate.text!);
        
        // Calculate interest
        var interest = principal! * rate! * time!;
        interest = interest / 100;
        interest = Double(round(Double(interest * 100)) / 100.00);
        
        // Calculate total amount
        let total_amount = Double(round(Double(interest + principal!) * 100) / 100.00);
        
        outputInterest.text = String(interest);
        outputAmount.text = String(total_amount);
    }

}

