//
//  ViewController.swift
//  AppForCodePath
//
//  Created by Michelle Tran on 11/27/19.
//  Copyright © 2019 Michelle Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var originalBackgroundColor: UIColor!
    @IBOutlet weak var addCustomTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Store the original background color
        originalBackgroundColor = view.backgroundColor
    }

    @IBAction func changeTextColor(_ sender: UIButton) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func changeViewButton(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func changeTextStringButton(_ sender: UIButton) {
        if(addCustomTextField.text == "")
        {
            textLabel.text = "...and I say hello!"
        }
        else
        {
            textLabel.text = addCustomTextField.text
        }
        view.endEditing(true)
        addCustomTextField.text = ""
    }
    
    @IBAction func resetView(_ sender: Any) {
        textLabel.text = "You say goodbye..."
        textLabel.textColor = UIColor.black
        view.backgroundColor = originalBackgroundColor
    }
    
    
}

