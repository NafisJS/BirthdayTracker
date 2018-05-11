//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Nafis JS on 10/05/2018.
//  Copyright © 2018 Nafis Ltd. All rights reserved.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdayPicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdayPicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdayPicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
        
        print("Create record about birthday!")
        print("Name: \(newBirthday.firstName)")
        print("Last Name: \(newBirthday.lastName)")
        print("Birthdate: \(newBirthday.birthdate)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}

