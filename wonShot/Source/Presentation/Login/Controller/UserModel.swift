//
//  UserModel.swift
//  wonShot
//
//  Created by nayeon  on 2023/05/30.
//

import Foundation

final class UserModel {
//    struct User {
//        var email: String
//        var password: String
//    }
    
    //유저 확인 
    var users: [User] = [
        User(email: "abc1234@naver.com", password: "qwerty1234"),
        User(email: "dazzlynnnn@gmail.com", password: "asdfasdf5678")
    ]
    
    //로그인 유효성 검사
    
    // 아이디 형식 검사
    func isValidEmail(id: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: id)
    }
    
    // 비밀번호 형식 검사
    func isValidPassword(pwd: String) -> Bool {
        let passwordRegEx = "^[a-zA-Z0-9]{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordTest.evaluate(with: pwd)
    }
    
    //유저 확인
    
    //로그인 완료시 callback 메소드

} // end of UserModel
