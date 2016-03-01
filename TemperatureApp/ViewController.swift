//
//  ViewController.swift
//  TemperatureApp
//
//  Created by Zeynep Aykal on 01/03/16.
//  Copyright © 2016 Zeynep Aykal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var segmentSelector: UISegmentedControl!
    
    
    
    
    @IBOutlet weak var celsiusValue: UITextField!
    
    @IBOutlet weak var theResultLabel: UILabel!
    
    
    
    @IBAction func changeLabel(sender: AnyObject)
    {
    theResultLabel.text = ""
        celsiusValue.text = ""
    }
        
        
            @IBAction func calculate(sender: AnyObject)
            {
                
                celsiusValue.resignFirstResponder()
                
                if segmentSelector.selectedSegmentIndex == 0
            {
                if celsiusValue.text == ""
                    
                {
                    theResultLabel.text = "enter value please"
                    
                }
                    
                else
                {
                    let celsius:Double = Double (celsiusValue.text!)!
                    
                    let fah:Double = (9*celsius + 160)/5
                    
                    theResultLabel.text = " \(fah) fahrenheit"
                }
                
            }
                
                else if segmentSelector.selectedSegmentIndex == 1
                {
                    theResultLabel.text = ""
                    let fahrenheit:Double = Double (celsiusValue.text!)!
                    let celsius1:Double = (fahrenheit-32)*5/9
            
                theResultLabel.text = "\(celsius1) celsius"
                
                }
                
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.celsiusValue.delegate = self;
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}

