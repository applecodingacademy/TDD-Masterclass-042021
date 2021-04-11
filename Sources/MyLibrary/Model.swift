//
//  Model.swift
//  
//
//  Created by Julio César Fernández Muñoz on 28/9/20.
//

import Foundation

enum Department: String, Codable, CaseIterable {
    case accounting = "Accounting"
    case businessDevelopment = "Business Development"
    case engineering = "Engineering"
    case humanResources = "Human Resources"
    case legal = "Legal"
    case marketing = "Marketing"
    case productManagement = "Product Management"
    case researchAndDevelopment = "Research and Development"
    case sales = "Sales"
    case services = "Services"
    case support = "Support"
    case training = "Training"
}

enum Gender: String, Codable, CaseIterable {
    case female = "Female"
    case male = "Male"
    case other = "Other"
}

struct EmployeeData: Codable {
    let id: Int16
    let username, firstName, lastName: String
    let gender: Gender
    let email: String
    let department: Department
    let address: String
    let avatar: URL
    let zipcode: String?

    enum CodingKeys: String, CodingKey {
        case id, username
        case firstName = "first_name"
        case lastName = "last_name"
        case gender, email, department, address, avatar, zipcode
    }
}
