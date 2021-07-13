//
//  OrdersPresenter.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 11/07/2021.
//

import Foundation

final class OrdersPresenter {
    typealias Routes = OrdersDetailsRoute & PopUpRoute & LoginRoute
    private let router: Routes
//
    init(router: Routes) {
        self.router = router
    }

    func detailsButtonTouchUpInside() {
        print("Details Button pressed")
        router.openDetails()
    }
    
    func popupButtonTouchUpInside() {
        print("Popup Button pressed")
        router.openPopUp(withMessage: "Show popup from Orders")
    }
    
    func loginButtonTouchUpInside() {
        print("Login Button pressed")
        router.openLogin()
    }
}
