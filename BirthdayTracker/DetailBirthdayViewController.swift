//
//  DetailBirthdayViewController.swift
//  BirthdayTracker
//
//  Created by Nafis JS on 15/05/2018.
//  Copyright © 2018 Nafis Ltd. All rights reserved.
//

import UIKit
import Foundation

class DetailBirthdayViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdateTextField: UITextField!

    var firstName = String()
    var lastName = String()
    var birthdate = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.text = firstName
        lastNameTextField.text = lastName

        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.full
        birthdateTextField.text = formatter.string(from: birthdate)
    }
    
}
