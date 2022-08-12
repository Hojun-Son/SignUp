//
//  UserInformation.swift
//  SignUp
//
//  Created by ABLY on 2022/08/12.
//

import Foundation

class UserInformation {
    static let shared: UserInformation = UserInformation()
    
    var id: String?
    var password: String?
}
