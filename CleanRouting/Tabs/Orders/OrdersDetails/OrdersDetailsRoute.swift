//
//  OrdersDetailsRoute.swift
//  CleanRouting
//
//  Created by Tran Dinh Thang on 12/07/2021.
//

import Foundation

protocol OrdersDetailsRoute {
    func openDetails()
}

extension OrdersDetailsRoute where Self: Router {
    // This method isn't part of the interface and can only be used
    // internally by instances that conform to Router, like MainRouter,
    // DeeplinkRouter and others.
    func openDetails(with transition: Transition) {
        // If the `Router` makes use of a DI container it can resolve
        // the dependencies in a clean and testable way by doing something like:
        //
        // let viewController = container.resolve(ProductViewController.self, argument: router)

        let router = MainRouter(rootTransition: transition)
        let presenter = OrdersDetailsPresenter()
        let viewController = OrdersDetailsViewController(presenter: presenter)
        router.root = viewController

        route(to: viewController, as: transition)
    }

    func openDetails() {
        openDetails(with: PushTransition())
    }
}

extension MainRouter: OrdersDetailsRoute {}
