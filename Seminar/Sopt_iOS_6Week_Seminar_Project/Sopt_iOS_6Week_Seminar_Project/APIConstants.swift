//
//  APIConstants.swift
//  Sopt_iOS_6Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/21.
//

import Foundation
struct APIConstants {
    static let baseURL = "http://15.164.83.210:3000"
    // 로그인 url
    static let usersSignInURL = baseURL + "/users/signin"
    // 회원가입 url
    static let usersSignUpURL = baseURL + "/users/signup"
    
}
