//
//  User.swift
//  UserDefaultsExample
//
//  Created by Вячеслав Квашнин on 09.04.2022.
//

struct User {
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
