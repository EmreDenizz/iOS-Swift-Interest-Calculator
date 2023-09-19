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
        inputPrincipal.text = "";
        inputTime.text = "";
        inputRate.text = ""
        
        outputInterest.text = "";
        outputAmount.text = "";
    }
    
    @IBAction func btnCalculateClicked(_ sender: Any) {
        let principal = Int(inputPrincipal.text!);
        let time = Int(inputTime.text!);
        let rate = Int(inputRate.text!);
        
        var interest = principal! * rate! * time!;
        interest = interest  / 100;
        interest = Int(round(Double(interest * 100)) / 100.0);
        
        outputInterest.text = String(interest);
        outputAmount.text = String(principal! + interest);
    }
    
    
    
    
    


}

