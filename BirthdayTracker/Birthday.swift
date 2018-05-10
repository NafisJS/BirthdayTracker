//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Nafis JS on 10/05/2018.
//  Copyright © 2018 Nafis Ltd. All rights reserved.
//

import Foundation

class Birthday {
    let firstName: String
    let lastName: String
    let birthdate: Date
    
    init(firstName: String, lastName: String, birthdate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
    }
}
