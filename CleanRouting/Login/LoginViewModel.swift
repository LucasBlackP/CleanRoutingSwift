//
//  LoginViewModel.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import Foundation

final class LoginViewModel {
    typealias Routes =  Closable
    private var router: Routes

    init(router: Routes) {
        self.router = router
    }

    func dismissButtonTouchUpInside() {
        print("Dismiss Button pressed")
        router.close()
    }

    func forgottenPasswordButtonTouchUpInside() {
        print("Forgot Password Button pressed")
    }

    func signUpButtonTouchUpInside() {
        print("Sign Up Button pressed")
    }
}
