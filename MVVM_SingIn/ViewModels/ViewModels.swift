//
//  ViewModels.swift
//  MVVM_SingIn
//
//  Created by Илья on 9.06.23.
//

import Foundation

class ViewModel {
    var statusText =  Dynamic("")
    
    func userButtonPressed (login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in falied"
        } else {
            statusText.value = "you succesufally loggeg in "
        }
    }
}
