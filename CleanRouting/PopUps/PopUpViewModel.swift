//
//  PopUpViewModel.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import Foundation

final class PopUpViewModel {
    typealias Routes = Closable
    private let router: Routes
    let message: String

    init(message: String, router: Routes) {
        self.message = message
        self.router = router
    }

    func dismissButtonTouchUpInside() {
        print("Dismiss Button pressed")
        router.close()
    }
}
